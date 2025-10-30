.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;
.super Ljava/lang/Enum;
.source "Bokeh.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingIntValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

.field public static final enum DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

.field private static final INITIAL_BOKEH_STRENGTH:I = 0x32

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;


# instance fields
.field private final mIconId:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    const-string v1, "OFF"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    const-string v1, "DEFAULT"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v3, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->DEFAULT:Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->mIconId:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->mTextId:I

    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)[Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;
    .registers 1

    .line 96
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isBokehSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 97
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    .line 99
    new-array p0, p0, [Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;
    .registers 2

    .line 12
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;
    .registers 1

    .line 12
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;)V
    .registers 2

    .line 57
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;)V

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->mIconId:I

    return v0
.end method

.method public getInitialIntValue()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .registers 2

    .line 67
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->BOKEH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object v0
.end method

.method public getKeyTextId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextId()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Bokeh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
