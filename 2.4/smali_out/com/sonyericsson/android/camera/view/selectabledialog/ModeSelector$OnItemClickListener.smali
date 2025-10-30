.class Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;
.super Ljava/lang/Object;
.source "ModeSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$1;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_86

    const-class v0, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_86

    .line 83
    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;

    const/4 v0, 0x0

    .line 87
    invoke-static {}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->values()[Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-ge v4, v2, :cond_5c

    aget-object v5, v1, v4

    .line 88
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$000(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/sonyericsson/android/camera/view/modeselector/InternalMode;->generateId(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->DUAL_MONOCHROME:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eq v5, v1, :cond_5c

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->PORTRAIT_SELFIE:Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;

    if-eq v5, v1, :cond_5c

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs()V

    goto :goto_5c

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_5c
    :goto_5c
    if-nez v0, :cond_74

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mModeLoader:Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$000(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/CapturingModePanelAttributes;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/view/modeselector/AddonMode;->generateId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;->findById(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/modeselector/Mode;

    move-result-object v0

    .line 104
    :cond_74
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnItemClickListener;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    # getter for: Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->mOnModeSelectListener:Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;->access$100(Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;

    move-result-object p1

    invoke-interface {p1, v0, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;->onModeSelected(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V

    :cond_85
    return-void

    :cond_86
    :goto_86
    return-void
.end method
