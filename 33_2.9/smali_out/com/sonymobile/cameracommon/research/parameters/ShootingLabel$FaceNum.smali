.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;
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
    name = "FaceNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$IntParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

.field public static final enum FACE_NUM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 266
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v1, "FACE_NUM_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 267
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v3, "FACE_NUM_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 268
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v5, "FACE_NUM_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 269
    new-instance v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v7, "FACE_NUM_3"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 270
    new-instance v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v9, "FACE_NUM_4"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    .line 271
    new-instance v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const-string v11, "FACE_NUM_5"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 265
    sput-object v11, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;
    .registers 2

    .line 265
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;
    .registers 1

    .line 265
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 2

    .line 282
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->mValue:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 1

    .line 287
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;->FACE_NUM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FaceNum;

    return-object p0
.end method
