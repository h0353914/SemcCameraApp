.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FrontFlash"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$StringParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum NIGHT_PORTRAIT_FLASH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

.field public static final enum RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;


# instance fields
.field private mConvertedChar:C

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 364
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "AUTO"

    const-string v2, "AUTO"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 365
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "ON"

    const-string v2, "ON"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 366
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "RED_EYE"

    const-string v2, "RED_EYE"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 367
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "OFF"

    const-string v2, "OFF"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 368
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "LED_ON"

    const-string v2, "LED_ON"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 369
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "LED_OFF"

    const-string v2, "LED_OFF"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    .line 370
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const-string v1, "NIGHT_PORTRAIT_FLASH"

    const-string v2, "NIGHT_PORTRAIT_FLASH"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->NIGHT_PORTRAIT_FLASH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    const/4 v0, 0x7

    .line 363
    new-array v0, v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->RED_EYE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_ON:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->LED_OFF:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->NIGHT_PORTRAIT_FLASH:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    aput-object v1, v0, v9

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 377
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
    .registers 2

    .line 363
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;
    .registers 1

    .line 363
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->mValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2

    .line 387
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;->AUTO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FrontFlash;

    return-object v0
.end method
