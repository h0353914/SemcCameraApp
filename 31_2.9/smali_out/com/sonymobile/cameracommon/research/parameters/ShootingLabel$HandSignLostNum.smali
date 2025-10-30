.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HandSignLostNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum FIVE_AND_MORE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum ONE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum TWO_TO_FOUR:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

.field public static final enum ZERO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;


# instance fields
.field private final mMaxNum:I

.field private final mMinNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 239
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v1, "NA"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 240
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v1, "ZERO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ZERO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 241
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v1, "ONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ONE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 242
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v1, "TWO_TO_FOUR"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v4, v6}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->TWO_TO_FOUR:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 243
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    const-string v1, "FIVE_AND_MORE"

    const/4 v7, 0x5

    const v8, 0x7fffffff

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->FIVE_AND_MORE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    .line 238
    new-array v0, v7, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ZERO:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->ONE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->TWO_TO_FOUR:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->FIVE_AND_MORE:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 250
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMinNum:I

    .line 251
    iput p4, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMaxNum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;
    .registers 2

    .line 238
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;
    .registers 1

    .line 238
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    .line 256
    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMinNum:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->mMaxNum:I

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 2

    .line 261
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;->NA:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$HandSignLostNum;

    return-object v0
.end method
