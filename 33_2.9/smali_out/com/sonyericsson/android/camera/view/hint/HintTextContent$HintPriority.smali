.class public final enum Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
.super Ljava/lang/Enum;
.source "HintTextContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v1, "HIGHEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGHEST:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 24
    new-instance v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->HIGH:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 25
    new-instance v3, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v5, "MIDDLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->MIDDLE:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    .line 26
    new-instance v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->LOW:Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 21
    sput-object v7, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 2

    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;
    .registers 1

    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->$VALUES:[Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/hint/HintTextContent$HintPriority;

    return-object v0
.end method
