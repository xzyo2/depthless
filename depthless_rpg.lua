--[[
  __  ___   _  ___  
  \ \/ / | | |/ _ \ 
   >  <| |_| | (_) |
  /_/\_\\__, |\___/ 
        |___/ 

Found bugs? https://discord.gg/5QtB6CYU77
]]--

local v0=game.Players.LocalPlayer;local v1=v0.Character or v0.CharacterAdded:Wait() ;local v2=v1:WaitForChild("HumanoidRootPart");local v3=v1:WaitForChild("Humanoid");v0.CharacterAdded:Connect(function(v285) local v286=0 -0 ;while true do if (v286==(3 -2)) then v3=v285:WaitForChild("Humanoid");v3.WalkSpeed=(stealthSpeedEnabled and stealthSpeedValue) or defaultWalkSpeed ;break;end if (v286==0) then v1=v285;v2=v285:WaitForChild("HumanoidRootPart");v286=443 -(416 + 26) ;end end end);local v4=false;local v5=31 -21 ;local v6="Slow";local v7=true;local v8={Slow=0.5 + 0 ,Medium=0.3 -0 ,Fast=0.02};local v9=454 -(145 + 293) ;local v10=50;local v11=false;local v12=false;local v13=455 -(44 + 386) ;game:GetService("StarterGui"):SetCore("SendNotification",{Title="Depthless RPG GUI",Text="Press RightShift to toggle GUI visibility",Duration=1491 -(998 + 488) });local v14=Instance.new("ScreenGui");v14.Name="KillAuraGUI";v14.ResetOnSpawn=false;v14.Parent=v0:WaitForChild("PlayerGui");local v18=Instance.new("Frame");v18.Size=UDim2.new(0 + 0 ,246 + 54 ,772 -(201 + 571) ,450);v18.Position=UDim2.new(0,1148 -(116 + 1022) ,0 -0 ,6 + 4 );v18.BackgroundColor3=Color3.fromRGB(45,164 -119 ,159 -114 );v18.BorderSizePixel=859 -(814 + 45) ;v18.Draggable=false;v18.Parent=v14;local v25=Instance.new("UICorner");v25.CornerRadius=UDim.new(0,19 -11 );v25.Parent=v18;local v28=Instance.new("Frame");v28.Size=UDim2.new(1 + 0 ,0 + 0 ,885 -(261 + 624) ,30);v28.Position=UDim2.new(0 -0 ,1080 -(1020 + 60) ,1423 -(630 + 793) ,0 -0 );v28.BackgroundColor3=Color3.fromRGB(165 -130 ,14 + 21 ,35);v28.Active=true;v28.Parent=v18;local v34=Instance.new("UICorner");v34.CornerRadius=UDim.new(0 -0 ,1755 -(760 + 987) );v34.Parent=v28;local v37=Instance.new("TextLabel");v37.Size=UDim2.new(1914 -(1789 + 124) , -(796 -(745 + 21)),1 + 0 ,0);v37.Position=UDim2.new(0 -0 ,39 -29 ,0,0 + 0 );v37.BackgroundTransparency=1 + 0 ;v37.Text="Depthless RPG GUI - xyo";v37.TextColor3=Color3.fromRGB(1310 -(87 + 968) ,255,1122 -867 );v37.Font=Enum.Font.GothamBold;v37.TextSize=17 + 1 ;v37.Parent=v28;local v47=false;local v48=Instance.new("TextButton");v48.Size=UDim2.new(0,67 -37 ,1,1413 -(447 + 966) );v48.Position=UDim2.new(2 -1 , -30,1817 -(1703 + 114) ,701 -(376 + 325) );v48.BackgroundTransparency=1;v48.Text="-";v48.Font=Enum.Font.GothamBold;v48.TextSize=18;v48.TextColor3=Color3.fromRGB(255,417 -162 ,784 -529 );v48.Parent=v28;local function v57() v47= not v47;for v312,v313 in ipairs(v18:GetChildren()) do if ((v313~=v28) and v313:IsA("GuiObject")) then v313.Visible= not v47;end end if v47 then local v323=0 + 0 ;while true do if (v323==(0 -0)) then v18:TweenSize(UDim2.new(14 -(9 + 5) ,676 -(85 + 291) ,0,1295 -(243 + 1022) ),"Out","Quad",0.2,true);v48.Text="+";break;end end else v18:TweenSize(UDim2.new(0,300,0,1712 -1262 ),"Out","Quad",0.2,true);v48.Text="-";end end v48.MouseButton1Click:Connect(v57);local v58=game:GetService("UserInputService");local v59=false;local v60,v61,v62;v28.InputBegan:Connect(function(v287) if (v287.UserInputType==Enum.UserInputType.MouseButton1) then local v325=0 + 0 ;while true do if (v325==1) then v62=v18.Position;v287.Changed:Connect(function() if (v287.UserInputState==Enum.UserInputState.End) then v59=false;end end);break;end if (v325==0) then v59=true;v61=v287.Position;v325=1;end end end end);v28.InputChanged:Connect(function(v288) if (v288.UserInputType==Enum.UserInputType.MouseMovement) then v60=v288;end end);v58.InputChanged:Connect(function(v289) if ((v289==v60) and v59) then local v326=1180 -(1123 + 57) ;local v327;while true do if (v326==0) then v327=v289.Position-v61 ;v18.Position=UDim2.new(v62.X.Scale,v62.X.Offset + v327.X ,v62.Y.Scale,v62.Y.Offset + v327.Y );break;end end end end);local v63=Instance.new("TextButton");v63.Size=UDim2.new(0 + 0 ,534 -(163 + 91) ,0,1980 -(1869 + 61) );v63.Position=UDim2.new(0 + 0 ,35 -25 ,0,61 -21 );v63.BackgroundColor3=Color3.fromRGB(7 + 43 ,50,68 -18 );v63.TextColor3=Color3.fromRGB(240 + 15 ,255,255);v63.Font=Enum.Font.Gotham;v63.TextSize=1488 -(1329 + 145) ;v63.Text="Kill Aura: OFF";v63.Parent=v18;local v73=Instance.new("UICorner");v73.CornerRadius=UDim.new(971 -(140 + 831) ,1854 -(1409 + 441) );v73.Parent=v63;local v76=Instance.new("Frame");v76.Size=UDim2.new(718 -(15 + 703) ,130 + 150 ,438 -(262 + 176) ,20);v76.Position=UDim2.new(1721 -(345 + 1376) ,698 -(198 + 490) ,0,441 -341 );v76.BackgroundColor3=Color3.fromRGB(191 -111 ,80,1286 -(696 + 510) );v76.BorderSizePixel=0 -0 ;v76.Parent=v18;local v82=Instance.new("UICorner");v82.CornerRadius=UDim.new(1262 -(1091 + 171) ,4);v82.Parent=v76;local v85=Instance.new("Frame");v85.Size=UDim2.new(0 + 0 ,31 -21 ,3 -2 ,374 -(123 + 251) );v85.Position=UDim2.new(0 -0 ,698 -(208 + 490) ,0 + 0 ,0 + 0 );v85.BackgroundColor3=Color3.fromRGB(255,1091 -(660 + 176) ,31 + 224 );v85.Parent=v76;local v90=Instance.new("UICorner");v90.CornerRadius=UDim.new(0,206 -(14 + 188) );v90.Parent=v85;local v93=Instance.new("TextLabel");v93.Size=UDim2.new(675 -(534 + 141) ,113 + 167 ,0 + 0 ,20 + 0 );v93.Position=UDim2.new(0,10,0 -0 ,198 -73 );v93.BackgroundTransparency=2 -1 ;v93.TextColor3=Color3.fromRGB(137 + 118 ,255,163 + 92 );v93.Font=Enum.Font.Gotham;v93.TextSize=14;v93.Text="Kill Aura Radius: "   .. v5 ;v93.Parent=v18;local v102=Instance.new("TextButton");v102.Size=UDim2.new(396 -(115 + 281) ,651 -371 ,0,25 + 5 );v102.Position=UDim2.new(0 -0 ,36 -26 ,867 -(550 + 317) ,155);v102.BackgroundColor3=Color3.fromRGB(115 -35 ,112 -32 ,223 -143 );v102.TextColor3=Color3.fromRGB(255,540 -(134 + 151) ,1920 -(970 + 695) );v102.Font=Enum.Font.Gotham;v102.TextSize=26 -12 ;v102.Text="Kill Speed: "   .. v6 ;v102.Parent=v18;local v111=Instance.new("UICorner");v111.CornerRadius=UDim.new(1990 -(582 + 1408) ,13 -9 );v111.Parent=v102;local v114=Instance.new("Frame");v114.Size=UDim2.new(1 -0 , -(75 -55),0,2);v114.Position=UDim2.new(0,1834 -(1195 + 629) ,0 -0 ,436 -(187 + 54) );v114.BackgroundColor3=Color3.fromRGB(800 -(162 + 618) ,15 + 5 ,14 + 6 );v114.BorderSizePixel=0 -0 ;v114.Parent=v18;local v120=Instance.new("TextButton");v120.Size=UDim2.new(0 -0 ,22 + 258 ,1636 -(1373 + 263) ,1030 -(451 + 549) );v120.Position=UDim2.new(0 + 0 ,15 -5 ,0,344 -139 );v120.BackgroundColor3=Color3.fromRGB(80,80,1464 -(746 + 638) );v120.TextColor3=Color3.fromRGB(96 + 159 ,387 -132 ,596 -(218 + 123) );v120.Font=Enum.Font.Gotham;v120.TextSize=1595 -(1535 + 46) ;v120.Text="NPC Repel: OFF";v120.Parent=v18;local v129=Instance.new("UICorner");v129.CornerRadius=UDim.new(0 + 0 ,4);v129.Parent=v120;v120.MouseButton1Click:Connect(function() v12= not v12;v120.Text=(v12 and "NPC Repel: ON") or "NPC Repel: OFF" ;end);local v132=Instance.new("Frame");v132.Size=UDim2.new(0 + 0 ,840 -(306 + 254) ,0 + 0 ,39 -19 );v132.Position=UDim2.new(1467 -(899 + 568) ,7 + 3 ,0 -0 ,843 -(268 + 335) );v132.BackgroundColor3=Color3.fromRGB(370 -(60 + 230) ,652 -(426 + 146) ,10 + 70 );v132.BorderSizePixel=1456 -(282 + 1174) ;v132.Parent=v18;local v138=Instance.new("UICorner");v138.CornerRadius=UDim.new(0,815 -(569 + 242) );v138.Parent=v132;local v141=Instance.new("Frame");v141.Size=UDim2.new(0 -0 ,1 + 9 ,1025 -(706 + 318) ,1251 -(721 + 530) );v141.Position=UDim2.new(0,0,1271 -(945 + 326) ,0 -0 );v141.BackgroundColor3=Color3.fromRGB(227 + 28 ,955 -(271 + 429) ,235 + 20 );v141.Parent=v132;local v146=Instance.new("UICorner");v146.CornerRadius=UDim.new(0,4);v146.Parent=v141;local v149=Instance.new("TextLabel");v149.Size=UDim2.new(0,1780 -(1408 + 92) ,1086 -(461 + 625) ,1308 -(993 + 295) );v149.Position=UDim2.new(0 + 0 ,1181 -(418 + 753) ,0,265);v149.BackgroundTransparency=1;v149.TextColor3=Color3.fromRGB(255,98 + 157 ,255);v149.Font=Enum.Font.Gotham;v149.TextSize=2 + 12 ;v149.Text="NPC Repel Distance: "   .. v13   .. " studs" ;v149.Parent=v18;local v158=Instance.new("Frame");v158.Size=UDim2.new(1 + 0 , -(6 + 14),0,531 -(406 + 123) );v158.Position=UDim2.new(0,1779 -(1749 + 20) ,0,68 + 217 );v158.BackgroundColor3=Color3.fromRGB(1342 -(1249 + 73) ,20,20);v158.BorderSizePixel=0 + 0 ;v158.Parent=v18;local v164=Instance.new("TextButton");v164.Size=UDim2.new(0,280,1145 -(466 + 679) ,72 -42 );v164.Position=UDim2.new(0 -0 ,10,1900 -(106 + 1794) ,295);v164.BackgroundColor3=Color3.fromRGB(26 + 54 ,80,21 + 59 );v164.TextColor3=Color3.fromRGB(752 -497 ,690 -435 ,369 -(4 + 110) );v164.Font=Enum.Font.Gotham;v164.TextSize=598 -(57 + 527) ;v164.Text="Stealth Speed: OFF";v164.Parent=v18;local v173=Instance.new("UICorner");v173.CornerRadius=UDim.new(1427 -(41 + 1386) ,4);v173.Parent=v164;local v176=Instance.new("Frame");v176.Size=UDim2.new(103 -(17 + 86) ,280,0 + 0 ,20);v176.Position=UDim2.new(0 -0 ,10,0 -0 ,335);v176.BackgroundColor3=Color3.fromRGB(80,246 -(122 + 44) ,80);v176.BorderSizePixel=0;v176.Parent=v18;local v182=Instance.new("UICorner");v182.CornerRadius=UDim.new(0 -0 ,12 -8 );v182.Parent=v176;local v185=Instance.new("Frame");v185.Size=UDim2.new(0 + 0 ,2 + 8 ,1,0 -0 );v185.Position=UDim2.new(0,65 -(30 + 35) ,0 + 0 ,0);v185.BackgroundColor3=Color3.fromRGB(1512 -(1043 + 214) ,963 -708 ,1467 -(323 + 889) );v185.Parent=v176;local v190=Instance.new("UICorner");v190.CornerRadius=UDim.new(0,4);v190.Parent=v185;local v193=Instance.new("TextLabel");v193.Size=UDim2.new(0,753 -473 ,580 -(361 + 219) ,20);v193.Position=UDim2.new(320 -(53 + 267) ,3 + 7 ,0,773 -(15 + 398) );v193.BackgroundTransparency=1;v193.TextColor3=Color3.fromRGB(255,1237 -(18 + 964) ,959 -704 );v193.Font=Enum.Font.Gotham;v193.TextSize=14;v193.Text="Stealth Speed: "   .. v10 ;v193.Parent=v18;local v202=Instance.new("Frame");v202.Size=UDim2.new(1 + 0 , -(13 + 7),0,2);v202.Position=UDim2.new(0,860 -(20 + 830) ,0 + 0 ,511 -(116 + 10) );v202.BackgroundColor3=Color3.fromRGB(2 + 18 ,20,758 -(542 + 196) );v202.BorderSizePixel=0 -0 ;v202.Parent=v18;local v208=Instance.new("TextButton");v208.Size=UDim2.new(0 + 0 ,280,0 + 0 ,30);v208.Position=UDim2.new(0 + 0 ,26 -16 ,0,1012 -617 );v208.BackgroundColor3=Color3.fromRGB(1631 -(1126 + 425) ,485 -(118 + 287) ,313 -233 );v208.TextColor3=Color3.fromRGB(255,1376 -(118 + 1003) ,746 -491 );v208.Font=Enum.Font.Gotham;v208.TextSize=14;v208.Text="Teleport";v208.Parent=v18;local v217=Instance.new("UICorner");v217.CornerRadius=UDim.new(377 -(142 + 235) ,18 -14 );v217.Parent=v208;local v220=Instance.new("TextLabel");v220.Size=UDim2.new(0 + 0 ,1257 -(553 + 424) ,0 -0 ,20);v220.Position=UDim2.new(0,10,0,379 + 51 );v220.BackgroundTransparency=1 + 0 ;v220.Text="discord.gg/5QtB6CYU77";v220.TextColor3=Color3.fromRGB(255,149 + 106 ,109 + 146 );v220.Font=Enum.Font.Gotham;v220.TextSize=8 + 6 ;v220.Parent=v18;local v229=Instance.new("Frame");v229.Size=UDim2.new(0 -0 ,300,0 -0 ,447 -247 );v229.Position=UDim2.new(0 + 0 ,v18.AbsolutePosition.X + v18.AbsoluteSize.X + 10 ,0 -0 ,v18.AbsolutePosition.Y);v229.BackgroundColor3=Color3.fromRGB(45,798 -(239 + 514) ,16 + 29 );v229.BorderSizePixel=1329 -(797 + 532) ;v229.Visible=false;v229.Parent=v14;local v236=Instance.new("UICorner");v236.CornerRadius=UDim.new(0 + 0 ,3 + 5 );v236.Parent=v229;local v239=Instance.new("TextBox");v239.Size=UDim2.new(0 -0 ,1482 -(373 + 829) ,731 -(476 + 255) ,1155 -(369 + 761) );v239.Position=UDim2.new(0 + 0 ,18 -8 ,0 -0 ,248 -(64 + 174) );v239.BackgroundColor3=Color3.fromRGB(80,12 + 68 ,118 -38 );v239.TextColor3=Color3.fromRGB(591 -(144 + 192) ,471 -(42 + 174) ,192 + 63 );v239.Font=Enum.Font.Gotham;v239.TextSize=14;v239.PlaceholderText="Search Player";v239.ClearTextOnFocus=false;v239.Parent=v229;local v249=Instance.new("ScrollingFrame");v249.Size=UDim2.new(0 + 0 ,119 + 161 ,0,120);v249.Position=UDim2.new(1504 -(363 + 1141) ,1590 -(1183 + 397) ,0,121 -81 );v249.BackgroundColor3=Color3.fromRGB(44 + 16 ,45 + 15 ,60);v249.BorderSizePixel=1975 -(1913 + 62) ;v249.CanvasSize=UDim2.new(0 + 0 ,0,0,0);v249.ScrollBarThickness=15 -9 ;v249.Parent=v229;local v257=Instance.new("UIListLayout");v257.FillDirection=Enum.FillDirection.Vertical;v257.SortOrder=Enum.SortOrder.LayoutOrder;v257.Padding=UDim.new(1933 -(565 + 1368) ,4);v257.Parent=v249;local v264=Instance.new("TextLabel");v264.Size=UDim2.new(3 -2 , -20,1661 -(1477 + 184) ,27 -7 );v264.Position=UDim2.new(0 + 0 ,866 -(564 + 292) ,1 -0 , -(75 -50));v264.BackgroundTransparency=305 -(244 + 60) ;v264.Text="https://discord.gg/5QtB6CYU77";v264.TextColor3=Color3.fromRGB(197 + 58 ,255,731 -(41 + 435) );v264.Font=Enum.Font.Gotham;v264.TextSize=1015 -(938 + 63) ;v264.Parent=v229;v18:GetPropertyChangedSignal("Position"):Connect(function() v229.Position=UDim2.new(0 + 0 ,v18.AbsolutePosition.X + v18.AbsoluteSize.X + 10 ,1125 -(936 + 189) ,v18.AbsolutePosition.Y);end);v208.MouseButton1Click:Connect(function() local v292=0;while true do if (v292==(0 + 0)) then v229.Visible= not v229.Visible;if v229.Visible then v239.Text="";updatePlayerList("");end break;end end end);local function v273(v293) v293=v293 or "" ;for v314,v315 in ipairs(v249:GetChildren()) do if v315:IsA("TextButton") then v315:Destroy();end end for v316,v317 in ipairs(game.Players:GetPlayers()) do if ((v317~=v0) and string.find(string.lower(v317.Name),string.lower(v293))) then local v360=1613 -(1565 + 48) ;local v361;while true do if (v360==(1 + 0)) then v361.BackgroundColor3=Color3.fromRGB(90,1228 -(782 + 356) ,90);v361.TextColor3=Color3.fromRGB(255,522 -(176 + 91) ,255);v360=2;end if (v360==(10 -6)) then v361.MouseButton1Click:Connect(function() if (v317.Character and v317.Character:FindFirstChild("HumanoidRootPart")) then local v397=v317.Character.HumanoidRootPart;local v398=v397.CFrame.LookVector *  -5 ;local v399=v397.Position;v2.CFrame=CFrame.new(v399 + v398 + Vector3.new(0 -0 ,1095 -(975 + 117) ,0) );end v229.Visible=false;end);break;end if (3==v360) then v361.Text=v317.Name;v361.Parent=v249;v360=1879 -(157 + 1718) ;end if (v360==2) then v361.Font=Enum.Font.Gotham;v361.TextSize=14;v360=3 + 0 ;end if (v360==(0 -0)) then v361=Instance.new("TextButton");v361.Size=UDim2.new(3 -2 ,1018 -(697 + 321) ,0 -0 ,30);v360=1 -0 ;end end end end task.wait();local v294=v257.AbsoluteContentSize.Y;v249.CanvasSize=UDim2.new(0 -0 ,0,0 + 0 ,v294);end v239:GetPropertyChangedSignal("Text"):Connect(function() v273(v239.Text);end);game.Players.PlayerAdded:Connect(function() if v229.Visible then v273(v239.Text);end end);game.Players.PlayerRemoving:Connect(function() if v229.Visible then v273(v239.Text);end end);v63.MouseButton1Click:Connect(function() v4= not v4;v63.Text=(v4 and "Kill Aura: ON") or "Kill Aura: OFF" ;end);v102.MouseButton1Click:Connect(function() if (v6=="Slow") then v6="Medium";elseif (v6=="Medium") then v6="Fast";else v6="Slow";end v102.Text="Kill Speed: "   .. v6 ;end);v164.MouseButton1Click:Connect(function() local v298=0 -0 ;while true do if (v298==(0 -0)) then v11= not v11;v164.Text=(v11 and "Stealth Speed: ON") or "Stealth Speed: OFF" ;v298=1;end if (v298==(1228 -(322 + 905))) then if (v1 and v3) then v3.WalkSpeed=(v11 and v10) or v9 ;end break;end end end);local v274=false;v132.InputBegan:Connect(function(v299) if (v299.UserInputType==Enum.UserInputType.MouseButton1) then v274=true;v18.Draggable=false;end end);v132.InputEnded:Connect(function(v300) if (v300.UserInputType==Enum.UserInputType.MouseButton1) then local v329=611 -(602 + 9) ;while true do if (v329==(1189 -(449 + 740))) then v274=false;v18.Draggable=true;break;end end end end);v58.InputChanged:Connect(function(v301) if (v274 and (v301.UserInputType==Enum.UserInputType.MouseMovement)) then local v330=872 -(826 + 46) ;local v331;local v332;local v333;local v334;local v335;while true do if (v330==(947 -(245 + 702))) then v331=v58:GetMouseLocation();v332=v132.AbsolutePosition;v330=1;end if (v330==(9 -6)) then v13=math.floor(9 + 16 + (((2028 -(260 + 1638)) -(465 -(382 + 58))) * v335) );v149.Text="NPC Repel Distance: "   .. v13   .. " studs" ;break;end if (v330==(6 -4)) then v141.Position=UDim2.new(0 + 0 ,v334-(v141.AbsoluteSize.X/(3 -1)) ,0 -0 ,1205 -(902 + 303) );v335=v334/v333 ;v330=5 -2 ;end if (v330==(2 -1)) then v333=v132.AbsoluteSize.X;v334=math.clamp(v331.X-v332.X ,0 + 0 ,v333);v330=1692 -(1121 + 569) ;end end end end);local v275=false;v76.InputBegan:Connect(function(v302) if (v302.UserInputType==Enum.UserInputType.MouseButton1) then v275=true;v18.Draggable=false;end end);v76.InputEnded:Connect(function(v303) if (v303.UserInputType==Enum.UserInputType.MouseButton1) then v275=false;v18.Draggable=true;end end);v58.InputChanged:Connect(function(v304) if (v275 and (v304.UserInputType==Enum.UserInputType.MouseMovement)) then local v338=v58:GetMouseLocation();local v339=v76.AbsolutePosition;local v340=v76.AbsoluteSize.X;local v341=math.clamp(v338.X-v339.X ,0,v340);v85.Position=UDim2.new(214 -(22 + 192) ,v341-(v85.AbsoluteSize.X/2) ,683 -(483 + 200) ,1463 -(1404 + 59) );local v343=v341/v340 ;local v344=10 + ((2189 -1389) * v343) ;v5=math.floor(v344);v93.Text="Kill Aura Radius: "   .. v5 ;end end);local v276=false;local v277=21 -5 ;local v278=965 -(468 + 297) ;v176.InputBegan:Connect(function(v305) if (v305.UserInputType==Enum.UserInputType.MouseButton1) then v276=true;v18.Draggable=false;end end);v176.InputEnded:Connect(function(v306) if (v306.UserInputType==Enum.UserInputType.MouseButton1) then v276=false;v18.Draggable=true;end end);v58.InputChanged:Connect(function(v307) if (v276 and (v307.UserInputType==Enum.UserInputType.MouseMovement)) then local v348=562 -(334 + 228) ;local v349;local v350;local v351;local v352;local v353;local v354;while true do if (v348==(0 -0)) then v349=v58:GetMouseLocation();v350=v176.AbsolutePosition;v348=2 -1 ;end if (v348==2) then v185.Position=UDim2.new(0 -0 ,v352-(v185.AbsoluteSize.X/(1 + 1)) ,0,236 -(141 + 95) );v353=v352/v351 ;v348=3 + 0 ;end if (v348==(7 -4)) then v354=math.floor(v277 + ((v278-v277) * v353) );v10=v354;v348=4;end if (v348==4) then v193.Text="Stealth Speed: "   .. v354 ;if (v11 and v3) then v3.WalkSpeed=v354;end break;end if (v348==1) then v351=v176.AbsoluteSize.X;v352=math.clamp(v349.X-v350.X ,0,v351);v348=4 -2 ;end end end end);local function v279() local v308=v0.Character;if  not v308 then return nil;end for v318,v319 in ipairs(v308:GetChildren()) do if v319:IsA("Tool") then return v319;end end return nil;end local v280={};local v281=tick();local function v282() local v309=0 + 0 ;while true do if (v309==(0 -0)) then v280=workspace.Mobs:GetChildren();v281=tick();break;end end end local v283={};spawn(function() while v7 do local v320=0;while true do if ((1 + 0)==v320) then if (v4 and v1 and v2) then local v387=0 + 0 ;local v388;while true do if (v387==(0 -0)) then v388=v279();if v388 then for v403,v404 in ipairs(v280) do local v405=v404:FindFirstChild("HumanoidRootPart");if v405 then local v409=0 + 0 ;local v410;while true do if ((163 -(92 + 71))==v409) then v410=(v405.Position-v2.Position).Magnitude;if (v410<=v5) then if ( not v283[v404] or ((tick() -v283[v404])>v8[v6])) then game:GetService("ReplicatedStorage").Remotes.DamageMob:FireServer(v404,22,v388.Name);game:GetService("ReplicatedStorage").Remotes.PlayerDamagedMob:FireServer(v404,11 + 11 ,v388.Name);v283[v404]=tick();end end break;end end end end end break;end end end break;end if (v320==(0 -0)) then task.wait(v8[v6]);if ((tick() -v281)>=1) then v282();end v320=766 -(574 + 191) ;end end end end);local v284=workspace:WaitForChild("Mobs");spawn(function() while v7 do local v321=0 + 0 ;while true do if ((0 -0)==v321) then if (v12 and v1 and v2) then for v391,v392 in ipairs(v284:GetChildren()) do local v393=0 + 0 ;local v394;while true do if (v393==0) then v394=v392:FindFirstChild("HumanoidRootPart");if v394 then local v406=849 -(254 + 595) ;local v407;local v408;while true do if (v406==(127 -(55 + 71))) then if (v408<v13) then print("Repelling NPC:",v392.Name,"Distance:",v408,"-> New distance:",v13);local v415;if (v407.Magnitude>(0 -0)) then v415=v2.Position + (v407.Unit * v13) ;else v415=v2.Position + Vector3.new(v13,1790 -(573 + 1217) ,0 -0 ) ;end v394.CFrame=CFrame.new(v415);end break;end if (v406==(0 + 0)) then v407=v394.Position-v2.Position ;v408=v407.Magnitude;v406=1 -0 ;end end end break;end end end end task.wait(939.1 -(714 + 225) );break;end end end end);spawn(function() while v7 do local v322=0 -0 ;while true do if (v322==0) then if (v12 and v1 and v2) then for v395,v396 in ipairs(workspace:GetDescendants()) do if v396:IsA("BasePart") then local v401=0;local v402;while true do if (v401==(0 -0)) then v402=v396:FindFirstChild("canTouch");if (v402 and v402:IsA("BoolValue")) then local v411=(v396.Position-v2.Position).Magnitude;if (v411<v13) then v402.Value=false;end end break;end end end end end task.wait(0.1 + 0 );break;end end end end);v58.InputBegan:Connect(function(v310,v311) if ( not v311 and (v310.KeyCode==Enum.KeyCode.RightShift)) then v18.Visible= not v18.Visible;v229.Visible=false;end end);
