.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
.super Ljava/lang/Enum;
.source "DefaultLayoutPattern.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 27
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v3, "CLEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 31
    new-instance v3, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v5, "ZOOMING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 35
    new-instance v5, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v7, "FOCUS_SEARCHING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 39
    new-instance v7, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v9, "FOCUS_DONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 43
    new-instance v9, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v11, "CAPTURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 49
    new-instance v11, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v13, "BURST_SHOOTING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 53
    new-instance v13, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v15, "RECORDING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 57
    new-instance v15, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v14, "MODE_SELECTOR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 61
    new-instance v14, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v12, "SETTING"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 65
    new-instance v12, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v10, "SELFTIMER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 69
    new-instance v10, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v8, "PAUSE_RECORDING"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 73
    new-instance v8, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v6, "SEMIAUTO_SEEKING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    .line 17
    sput-object v6, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
    .registers 2

    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
    .registers 1

    .line 17
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    return-object v0
.end method
