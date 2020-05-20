%% HEADER
% This will eventually be a function called from a matlab running server
%
%
%

%% Initial setup
% create new temp folder
!mkdir temp
cd temp

% Clone shimming-toolbox repos and add to matlab path
!git clone https://github.com/shimming-toolbox/helpDocMd.git
!git clone https://github.com/ewiger/yamlmatlab.git
addpath(genpath('./helpDocMd/src'))
addpath(genpath('./yamlmatlab'))
!git clone https://github.com/shimming-toolbox/shimming-toolbox.org.git
!git clone https://github.com/shimming-toolbox/shimming-toolbox.git


%% branch
% Look if there is a remote branch called update-website
% - If yes, delete it
% create a branch called update-website
% git checkout -b update-website
%% API doc
% delete current shimming-toolbox.org/docs/contributing/API-documentation/*
% rmdir ./shimming-toolbox.org/docs/contributing/API-documentation s
% !mkdir ./shimming-toolbox.org/docs/contributing/API-documentation

% Generate APIDoc to shimming-toolbox.org/docs/contributing/API-documentation/*
% Idea, Add Ui, tests, misc... seperatly
% Documentor('./shimming-toolbox/Img') Currently not working

% Delete then add mkdocs.yml APIdoc navigation


%% README, LICENSE, etc

% Python script that (might as well be matlab at this point?) 
% - Reads current mkdocs.yml configuration file   Need YAML fix for names
% with spaces
% - Looks at shimming-toolbox for the appropriate files
% -- README will most likely need to be split up
% -- LICENSE (put where it says in mkdocs.yml)
% -- Other Ressources (Depending on if it's already in shimming-toolbox.org)
% - delete them from shimming-toolbox.org
% - Add them to shimming-toolbox.org

%% branch
% cd shimming-toolbox.org
% !git add .
% !git commit -m"Update website"
% !git push -u origin update-website % (force merge on master eventually?)

%%
% Delete temp folder and all subfolders
cd ..
rmdir temp s

disp('done')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% General purpose
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Read Yaml file
filepath = './shimming-toolbox.org/mkdocs.yml';
configFile = yaml.ReadYaml(filepath);
%% Write Yaml file
% yaml stores the config file a a data structure, to do so, it needs to
% remove the spacings from of certain nav fields. The following function
% finds those fields and adds the spaces back
yaml.WriteYaml(filepath, configFile);
keywords = {'Getting Started'; 'API Documentation'; 'Other Ressources'};
correctSpacings(filepath, keywords)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% functions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
function correctSpacings(filepath, keywords)
    
    % create cell array containing keyword without spaces
    for i = 1:numel(keywords)
        noSpacing{i,1} = keywords{i}(~isspace(keywords{i}));
    end
    
    % Read txt into cell A
    fileID = fopen(filepath,'r');
    i = 1;
    while ~feof(fileID)
        tline = fgetl(fileID);
        
        % In a line, look for each keywords
        for iKeyword = 1:numel(keywords)
             if(~isempty(strfind(tline,noSpacing{iKeyword})))
                 
                 
                 keywordStarts = strfind(tline,noSpacing{iKeyword}) - 1;
                 
                 iSpace = 0;
                 newKeyword = keywords{iKeyword};
                 spaceInKeyword = strfind(newKeyword,' ') - 1 + iSpace;
                 while(~isempty(spaceInKeyword))
                     spaceInTline = keywordStarts + spaceInKeyword ;
                     tline = [tline(1:spaceInTline), ' ' ,  tline(spaceInTline+1:end)] ;
                     
                     newKeyword = [newKeyword(1:spaceInKeyword-iSpace),  newKeyword(spaceInKeyword+2-iSpace:end)]
                     iSpace = iSpace+1;
                     spaceInKeyword = strfind(newKeyword,' ') - 1 + iSpace;
                     
                 end
             end
        end

        newText{i} = tline;
        i = i+1;
    end
    fclose(fileID);
    
    % Write newText into txt
    fileID = fopen(filepath, 'w');
    for i = 1:numel(newText)
        if i == numel(newText)
            fprintf(fileID,'%s', newText{i});
            break
        else
            fprintf(fileID,'%s\n', newText{i});
        end
    end
    fclose(fileID);

end




