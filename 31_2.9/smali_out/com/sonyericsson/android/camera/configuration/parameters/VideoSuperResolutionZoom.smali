.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;
.super Ljava/lang/Enum;
.source "VideoSuperResolutionZoom.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

.field private static final sParameterTextId:I = 0x7f0f046d


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 17
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    const-string v1, "OFF"

    const-string v5, "off"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0149

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    const-string v8, "AUTO"

    const-string v12, "auto"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const v11, 0x7f0f046c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->mIconId:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->mTextId:I

    .line 48
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;
    .registers 1

    .line 111
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;
    .registers 1

    .line 107
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;
    .registers 2

    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;
    .registers 1

    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 53
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getIconId()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->mIconId:I

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const v0, 0x7f0f046d

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSuperResolutionZoom;->mValue:Ljava/lang/String;

    return-object v0
.end method
