.class final enum Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
.super Ljava/lang/Enum;
.source "SomcMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/media/internal/SomcMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "States"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

.field public static final enum STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 114
    new-instance v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIAL:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 115
    new-instance v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->INITIALIZED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 116
    new-instance v3, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v5, "DATA_SOURCE_CONFIGURED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->DATA_SOURCE_CONFIGURED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 117
    new-instance v5, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v7, "PREPARED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->PREPARED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 118
    new-instance v7, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v9, "RECORDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RECORDING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 119
    new-instance v9, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v11, "STOPPING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->STOPPING:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 120
    new-instance v11, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v13, "RELEASED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->RELEASED:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    .line 121
    new-instance v13, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const-string v15, "ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->ERROR:Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 113
    sput-object v15, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->$VALUES:[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
    .registers 2

    .line 113
    const-class v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;
    .registers 1

    .line 113
    sget-object v0, Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->$VALUES:[Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    invoke-virtual {v0}, [Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/media/internal/SomcMediaRecorder$States;

    return-object v0
.end method
