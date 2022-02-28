-- Decompiled with the Synapse X Luau decompiler.

for v1, v2 in pairs(script.Parent:GetChildren()) do
    if v2:IsA("GuiButton") then
        if v2.Name == "ban1" then
            v2.Activated:Connect(function()
                game.ReplicatedStorage.admin:FireServer("pban", script.Parent.user.Text, script.Parent.reason.Text .. " T=" .. os.time() + 86400);
                script.Parent.Parent.Enabled = false;
            end);
        elseif v2.Name == "ban7" then
            v2.Activated:Connect(function()
                game.ReplicatedStorage.admin:FireServer("pban", script.Parent.user.Text, script.Parent.reason.Text .. " T=" .. os.time() + 604800);
                script.Parent.Parent.Enabled = false;
            end);
        elseif v2.Name == "ban31" then
            v2.Activated:Connect(function()
                game.ReplicatedStorage.admin:FireServer("pban", script.Parent.user.Text, script.Parent.reason.Text .. " T=" .. os.time() + 2678400);
                script.Parent.Parent.Enabled = false;
            end);
        else
            v2.Activated:Connect(function()
                if v2.Name ~= "exit" then
                    game.ReplicatedStorage.admin:FireServer(v2.Name, script.Parent.user.Text, script.Parent.reason.Text);
                end;
                script.Parent.Parent.Enabled = false;
            end);
        end;
    end;
end;
script.Parent.open.Event:Connect(function(p1)
    if game.ReplicatedStorage.isAdmin:InvokeServer() then
        script.Parent.user.Text = tostring(p1);
        script.Parent.Parent.Enabled = true;
    end;
end);
