.class final enum Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
.super Ljava/lang/Enum;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "XperiaTipsLaunchTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field private static final EVENT_NAME:Ljava/lang/String; = "launch_trigger"

.field public static final enum HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum NOT_TARGET:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

.field public static final enum SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1713
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "HW_KEY_SLEEP_OR_LOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1714
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "HW_KEY_OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1715
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "SHORTCUT_LOCKSCREEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1716
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "POWER_KEY_DOUBLE_PRESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1717
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "HOME_APP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    .line 1718
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const-string v1, "NOT_TARGET"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    const/4 v0, 0x6

    .line 1712
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->NOT_TARGET:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1712
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .registers 2

    .line 1712
    invoke-static {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    return-void
.end method

.method private static setLaunchTriggerEvent(Landroid/content/Context;Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .registers 7

    .line 1725
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY_LOCK:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_7

    .line 1726
    sget-object p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_SLEEP_OR_LOCK:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    goto :goto_22

    .line 1727
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_e

    .line 1728
    sget-object p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HW_KEY_OTHER:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    goto :goto_22

    .line 1729
    :cond_e
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->LOCK_SCREEN:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_15

    .line 1730
    sget-object p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->SHORTCUT_LOCKSCREEN:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    goto :goto_22

    .line 1731
    :cond_15
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->POWER_KEY_DOUBLE_TAP:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_1c

    .line 1733
    sget-object p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->POWER_KEY_DOUBLE_PRESS:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    goto :goto_22

    .line 1734
    :cond_1c
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->HOME:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_7b

    .line 1735
    sget-object p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->HOME_APP:Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    :goto_22
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1741
    :try_start_24
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "name"

    const-string v4, "launch_trigger"

    .line 1742
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    .line 1743
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/sonymobile/getmore/api/ContributionContract$Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_42
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_24 .. :try_end_42} :catch_61
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_42} :catch_43

    goto :goto_7a

    :catch_43
    move-exception p0

    .line 1749
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_7a

    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting data to XPERIA Tips : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_7a

    :catch_61
    move-exception p0

    .line 1747
    new-array p1, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found getmore api : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    .registers 2

    .line 1712
    const-class v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;
    .registers 1

    .line 1712
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;

    return-object v0
.end method
