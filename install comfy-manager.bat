@echo off
.\python\python.exe -s -m pip install gitpython
.\python\python.exe -c "import git; git.Repo.clone_from('https://github.com/ltdrdata/ComfyUI-Manager', './ComfyUI/custom_nodes/ComfyUI-Manager')"
.\python\python.exe -c "import git; git.Repo.clone_from('https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG', './ComfyUI/custom_nodes/ComfyUI-BRIA_AI-RMBG')"
curl -Lo .\ComfyUI\custom_nodes\ComfyUI-BRIA_AI-RMBG\RMBG-1.4\model.pth https://huggingface.co/briaai/RMBG-1.4/resolve/main/model.pth --ssl-no-revoke
