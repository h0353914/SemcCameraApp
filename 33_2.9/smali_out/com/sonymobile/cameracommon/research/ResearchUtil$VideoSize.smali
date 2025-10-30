.class public final enum Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
.super Ljava/lang/Enum;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FOUR_K_PLUS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FOUR_K_UHD_H264:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FOUR_K_UHD_H265:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FULL_HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FULL_HD_60FPS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FULL_HD_PLUS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum FWVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum MMS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum QVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

.field public static final enum VGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1981
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v1, "FULL_HD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1982
    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v3, "FULL_HD_60FPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD_60FPS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1983
    new-instance v3, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v5, "HD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->HD:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1984
    new-instance v5, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v7, "VGA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->VGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1985
    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v9, "FWVGA"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FWVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1986
    new-instance v9, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v11, "QVGA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->QVGA:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1987
    new-instance v11, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v13, "MMS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->MMS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1988
    new-instance v13, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v15, "FOUR_K_UHD_H264"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FOUR_K_UHD_H264:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1989
    new-instance v15, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v14, "FOUR_K_UHD_H265"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FOUR_K_UHD_H265:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1990
    new-instance v14, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v12, "FULL_HD_PLUS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FULL_HD_PLUS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    .line 1991
    new-instance v12, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const-string v10, "FOUR_K_PLUS"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->FOUR_K_PLUS:Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 1980
    sput-object v10, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1980
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getVideoSize(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
    .registers 1

    .line 1995
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
    .registers 2

    .line 1980
    const-class v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;
    .registers 1

    .line 1980
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->$VALUES:[Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    return-object v0
.end method
