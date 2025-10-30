.class final enum Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
.super Ljava/lang/Enum;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

.field public static final enum NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

.field public static final enum WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

.field public static final enum WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 3

    .line 104
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    sget-object v2, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const-string v1, "WEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    .line 106
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const-string v1, "WPA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const-string v1, "NO_PASSWORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    .line 104
    invoke-static {}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->$values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->$VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forIntentValue(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 3

    if-nez p0, :cond_5

    .line 111
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 113
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_4c

    goto :goto_3c

    :sswitch_11
    const-string v0, "WPA2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_3c

    :cond_1a
    const/4 v1, 0x3

    goto :goto_3c

    :sswitch_1c
    const-string v0, "WPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto :goto_3c

    :cond_25
    const/4 v1, 0x2

    goto :goto_3c

    :sswitch_27
    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto :goto_3c

    :cond_30
    const/4 v1, 0x1

    goto :goto_3c

    :sswitch_32
    const-string v0, "nopass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    packed-switch v1, :pswitch_data_5e

    .line 122
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 116
    :pswitch_42
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 118
    :pswitch_45
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 120
    :pswitch_48
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    nop

    :sswitch_data_4c
    .sparse-switch
        -0x3dfa56ae -> :sswitch_32
        0x14f42 -> :sswitch_27
        0x15088 -> :sswitch_1c
        0x28c0aa -> :sswitch_11
    .end sparse-switch

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 2

    .line 104
    const-class v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 1

    .line 104
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->$VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object v0
.end method
