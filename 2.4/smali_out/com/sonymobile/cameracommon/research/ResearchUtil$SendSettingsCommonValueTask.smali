.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendSettingsCommonValueTask"
.end annotation


# instance fields
.field private final mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .registers 3

    .line 551
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .registers 4

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 557
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    goto :goto_29

    .line 569
    :pswitch_12
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 570
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
