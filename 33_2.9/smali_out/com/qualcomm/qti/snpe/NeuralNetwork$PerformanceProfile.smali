.class public final enum Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
.super Ljava/lang/Enum;
.source "NeuralNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/NeuralNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerformanceProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum BALANCED:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum POWER_SAVER:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum SUSTAINED_HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field public static final enum SYSTEM_SETTINGS:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 62
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 63
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v3, "BALANCED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->BALANCED:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 64
    new-instance v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v5, "HIGH_PERFORMANCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 65
    new-instance v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v7, "POWER_SAVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->POWER_SAVER:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 66
    new-instance v7, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v9, "SYSTEM_SETTINGS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->SYSTEM_SETTINGS:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 67
    new-instance v9, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const-string v11, "SUSTAINED_HIGH_PERFORMANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->SUSTAINED_HIGH_PERFORMANCE:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 61
    sput-object v11, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->ordinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .registers 2

    .line 61
    const-class v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-object p0
.end method

.method public static values()[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .registers 1

    .line 61
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->$VALUES:[Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    invoke-virtual {v0}, [Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    return-object v0
.end method
