-- Module Entry point
function ModConfig:Setup()
    --self:RplaceCareer()
    self:AddMethodHookBefore("SettingUI.OnEnable", Test) -- Add method hook
end

function ModConfig:RplaceCareer()
    local Debug = CS.UnityEngine.Debug;
    Debug.Log("[Slay-Defect]资源已替换。") -- Replacement of career resources
    self:ReplaceAnimationLib("Idle", "Idle") -- Replace job idle animation
    self:ReplaceAnimationLib("Attack", "Attack") -- Replace class attack animation
    self:ReplaceAnimationLib("Skill", "Skill") -- Replace job skill animation
    self:ReplaceAnimationLib("Hit", "Hit") -- Replace job hit animation
    self:ModifyDataConfig("career_3", "Name", "故障机器人") -- Change job title
end

function ModConfig:ReplaceAnimationLib(name)
    self:RedirectSourcePath("AnimationLib/支配魔女/"..name, "Mods/ModTemplate/ModResource/AnimationLib/Defect/"..name)
end

function Test()
    local Debug = CS.UnityEngine.Debug;
    Debug.Log("[ModTemplate]测试方法被调用了！检测到设置菜单开启")
end
