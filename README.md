# CZB Fork

omni-engineer-czb is forked from LBL's `https://github.com/lbnl-science-it/omni-engineer-lbl.git`

 
The CZB fork is preconfigured to work with Bruno and CZB'z Service for AI Models (sam.czbiohub.org).
The CZB installation currently supports LLMs from OpenAI, Google/Gemini, and Ollama (running locally on Bruno)

Omni-Engineer is available as a module on bruno and after loading can be started with the command "omni-engineer"

The code defaults to the `openai/gpt-4` model for queries and `openai/gpt-3.5-turbo` for editing. 
If you want to choose another model you can get the list of available models with the command `/list_models`, and then
change the default model with the command `/change_model` or change the editor model with the command `/change_editor`.
Note that if an ollama model is selected, omni-engineer will check to see if ollama is currently available via 
http://sam.clusternet:11434. If it is not available, a new 4 hour job will be launched on Bruno to serve ollama models.
If a new ollama instance must be launched, there will be a slight delay before the model responds initially, but furhter
queries should be quick. 
 
This fork also includes a tool `format_omni_markdown.py` to format saved Markdown chat logs from Omni Engineer for easy reading.   

# 🧠 Omni Engineer: An AI-Powered Developer Console

An intelligent assistant designed to enhance your development workflow with advanced AI capabilities.

## ✨ NEW
O1 support. Simply use 
openai/o1-preview or openai/o1-mini as models.

## 🔍 Overview

Omni Engineer is a console-based tool that integrates AI capabilities into your development process. It offers smart responses to coding queries, file management, web searching, and image processing functionalities, now with enhanced features for a more robust development experience.

Omni Engineer is a spiritual successor to [Claude Engineer](https://github.com/Doriandarko/claude-engineer), built from extensive usage of hand-made AI tools, trial and error, and user feedback. This new script allows for more control via simplicity while introducing powerful new features like multi-file editing and chat session management.

## 🌟 Features

- AI-Powered Responses with Streaming Output
- Advanced File Management (Add, Edit, Create, Show Content)
- Multi-File Editing Support
- Web Searching with DuckDuckGo Integration
- Image Processing (Local Files and URLs)
- Undo Functionality for File Edits
- Conversation Save & Load
- Syntax Highlighting for Code
- Diff Display for File Changes
- AI Model Selection and Switching

## 🖥️ Commands

- `/add <filepath>`: Add files to AI context
- `/edit <filepath>`: Edit existing files
- `/new <filepath>`: Create new files
- `/search`: Perform web searches
- `/image <filepath/url>`: Add images to context
- `/clear`: Clear AI memory
- `/reset`: Reset the session
- `/stop`: Stop the output of the Assistant chat. Must press return after entering. 
- `/diff`: Toggle diff display
- `/history`: View chat history
- `/save`: Save current chat
- `/load`: Load a previous chat
- `/undo <filepath>`: Undo last file edit
- `/help`: Display available commands
- `/model`: Show current AI model
- `/change_model`: Change the AI model
- `/change_editor`: Change the AI editing model
- `/list_models`: List currently available models
- `/show <filepath>`: Display content of a file

## 🚀 Installation

1. Clone the repository:
   Go to the directory of your choice, then 
   ```
   git clone https://github.com/biohub-hpc/omni-engineer-czb.git
   
   ```
   Switch to the ```version/1.1.0``` branch
   ```
   git checkout version/1.1.0 
   ````
2. Install the required packages:
   ```
   pip install -r requirements.txt
   ```
2. Configure main.py to connect to a LiteLLM proxy server (use http://sam.clusternet:8000/v1 within CZB)
4. Run the main script:
   ```
   python main.py 
   ```

## 📚 Usage

After launching the console, enter commands or questions as needed. The AI will respond accordingly, assisting with various development tasks. Use the `/help` command to see a list of available commands and their descriptions.

## 🤖 AI Models

Omni Engineer utilizes OpenRouter to access a variety of AI models. The default model is set to "anthropic/claude-3.5-sonnet" for general assistance and "google/gemini-pro-1.5" for code editing. You can view the current model with `/model` and change it using `/change_model`. For detailed information on available models and their capabilities, refer to [OpenRouter's documentation](https://openrouter.ai/models).

## 🔧 Advanced Features

- **Multi-File Editing**: Edit multiple files in a single session.
- **Real-time Diff Display**: See changes as they're made with the diff feature.
- **Syntax Highlighting**: Improved code readability with syntax highlighting.
- **Image Context**: Add both local and URL-based images to your AI context.
- **Flexible Model Selection**: Switch between different AI models for various tasks.

## 🐛 Issue Reporting

Please use the issue tracker only for reporting actual bugs in the code. This helps keep the issue tracker focused on improving the project's stability and functionality.

## 🤝 Contributing

Contributions to Omni Engineer are welcome! Please feel free to submit pull requests, create issues for bugs, or suggest new features.

## ⭐️ Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Doriandarko/omni-engineer&type=Date)](https://star-history.com/#Doriandarko/omni-engineer&Date)


## Copyright

*** Copyright Notice ***

omni-engineer-lbl (omni) Copyright (c) 2025, The Regents of the University of California, through Lawrence Berkeley National Laboratory (subject to receipt of any required approvals from the U.S. Dept. of Energy) and Pietro Schirano. All rights reserved.

If you have questions about your rights to use or distribute this software, please contact Berkeley Lab's Intellectual Property Office at IPO@lbl.gov.

NOTICE.  This Software was developed under funding from the U.S. Department of Energy and the U.S. Government consequently retains certain rights.  As such, the U.S. Government has been granted for itself and others acting on its behalf a paid-up, nonexclusive, irrevocable, worldwide license in the Software to reproduce, distribute copies to the public, prepare derivative  works, and perform publicly and display publicly, and to permit others to do so.
