.class final enum Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
.super Ljava/lang/Enum;
.source "ShootingLabel.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FloatParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Zoom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;",
        ">;",
        "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$FloatParameter;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_0_DOT_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_10:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_7:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_8:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

.field public static final enum ZOOM_9:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;


# instance fields
.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 185
    new-instance v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v1, "ZOOM_0"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 186
    new-instance v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v3, "ZOOM_0_DOT_6"

    const/4 v4, 0x1

    const v5, 0x3f19999a    # 0.6f

    invoke-direct {v1, v3, v4, v5}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0_DOT_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 187
    new-instance v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v5, "ZOOM_1"

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v7}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_1:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 188
    new-instance v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v7, "ZOOM_2"

    const/4 v8, 0x3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v5, v7, v8, v9}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_2:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 189
    new-instance v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v9, "ZOOM_3"

    const/4 v10, 0x4

    const/high16 v11, 0x40400000    # 3.0f

    invoke-direct {v7, v9, v10, v11}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v7, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_3:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 190
    new-instance v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v11, "ZOOM_4"

    const/4 v12, 0x5

    const/high16 v13, 0x40800000    # 4.0f

    invoke-direct {v9, v11, v12, v13}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v9, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_4:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 191
    new-instance v11, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v13, "ZOOM_5"

    const/4 v14, 0x6

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-direct {v11, v13, v14, v15}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v11, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_5:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 192
    new-instance v13, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v15, "ZOOM_6"

    const/4 v14, 0x7

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-direct {v13, v15, v14, v12}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v13, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_6:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 193
    new-instance v12, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v15, "ZOOM_7"

    const/16 v14, 0x8

    const/high16 v10, 0x40e00000    # 7.0f

    invoke-direct {v12, v15, v14, v10}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v12, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_7:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 194
    new-instance v10, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v15, "ZOOM_8"

    const/16 v14, 0x9

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct {v10, v15, v14, v8}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v10, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_8:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 195
    new-instance v8, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v15, "ZOOM_9"

    const/16 v14, 0xa

    const/high16 v6, 0x41100000    # 9.0f

    invoke-direct {v8, v15, v14, v6}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v8, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_9:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    .line 196
    new-instance v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const-string v15, "ZOOM_10"

    const/16 v14, 0xb

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v6, v15, v14, v4}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;-><init>(Ljava/lang/String;IF)V

    sput-object v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_10:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    const/16 v4, 0xc

    new-array v4, v4, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 184
    sput-object v4, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput p3, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->mValue:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
    .registers 2

    .line 184
    const-class v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;
    .registers 1

    .line 184
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->$VALUES:[Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-object v0
.end method


# virtual methods
.method public equals(F)Z
    .registers 2

    .line 207
    iget p0, p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->mValue:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getDefaultValue()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .registers 1

    .line 212
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;->ZOOM_0:Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Zoom;

    return-object p0
.end method
