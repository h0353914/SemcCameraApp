.class public final enum Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
.super Ljava/lang/Enum;
.source "NeuralNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/NeuralNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Runtime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field public static final enum GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 40
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v1, "CPU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 41
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v1, "GPU"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 42
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v1, "DSP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 43
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v1, "GPU_FLOAT16"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 44
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const-string v1, "AIP"

    const/4 v6, 0x5

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 39
    new-array v0, v6, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->DSP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->AIP:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v1, v0, v7

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .registers 2

    .line 39
    const-class v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object p0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .registers 1

    .line 39
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object v0
.end method
