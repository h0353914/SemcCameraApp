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
.method static constructor <clinit>()V
    .registers 5

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const-string v1, "WEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const-string v1, "WPA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const-string v1, "NO_PASSWORD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    aput-object v1, v0, v4

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

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forIntentValue(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 4

    if-nez p0, :cond_5

    .line 106
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    :cond_5
    const/4 v0, -0x1

    .line 108
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3dfa56ae

    if-eq v1, v2, :cond_3d

    const v2, 0x14f42

    if-eq v1, v2, :cond_33

    const v2, 0x15088

    if-eq v1, v2, :cond_29

    const v2, 0x28c0aa

    if-eq v1, v2, :cond_1f

    goto :goto_46

    :cond_1f
    const-string v1, "WPA2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 v0, 0x1

    goto :goto_46

    :cond_29
    const-string v1, "WPA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 v0, 0x0

    goto :goto_46

    :cond_33
    const-string v1, "WEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 v0, 0x2

    goto :goto_46

    :cond_3d
    const-string v1, "nopass"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 v0, 0x3

    :cond_46
    :goto_46
    packed-switch v0, :pswitch_data_56

    .line 117
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 115
    :pswitch_4c
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->NO_PASSWORD:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 113
    :pswitch_4f
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WEP:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    .line 111
    :pswitch_52
    sget-object p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->WPA:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 2

    .line 99
    const-class v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;
    .registers 1

    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->$VALUES:[Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkType;

    return-object v0
.end method
