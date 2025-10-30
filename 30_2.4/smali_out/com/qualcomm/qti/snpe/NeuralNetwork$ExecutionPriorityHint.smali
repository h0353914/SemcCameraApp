.class public final enum Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
.super Ljava/lang/Enum;
.source "NeuralNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/NeuralNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExecutionPriorityHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field public static final enum HIGH:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field public static final enum LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field public static final enum NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 89
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 90
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->HIGH:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 91
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const-string v1, "LOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    const/4 v0, 0x3

    .line 88
    new-array v0, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->HIGH:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .registers 2

    .line 88
    const-class v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-object p0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .registers 1

    .line 88
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    return-object v0
.end method
