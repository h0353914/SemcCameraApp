.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;
.super Ljava/lang/Enum;
.source "SuperResolutionZoom.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingBooleanValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

.field private static final sParameterTextId:I = 0x7f0f014b


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 16
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    const-string v1, "OFF"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f0f0149

    const-string v5, "off"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    const-string v8, "AUTO"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const v11, 0x7f0f014a

    const-string v12, "auto"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 15
    sput-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->mIconId:I

    .line 46
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->mTextId:I

    .line 47
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;
    .registers 1

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isMainPhoto()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 111
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    return-object p0

    .line 113
    :cond_9
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    return-object p0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;
    .registers 1

    .line 106
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;
    .registers 2

    .line 15
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;
    .registers 1

    .line 15
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 52
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;)V

    return-void
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 102
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public getIconId()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->mIconId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 1

    .line 57
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SUPER_RESOLUTION_ZOOM:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getKeyTextId()I
    .registers 1

    const p0, 0x7f0f014b

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextId()I
    .registers 1

    .line 87
    iget p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->mTextId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolutionZoom;->mValue:Ljava/lang/String;

    return-object p0
.end method
