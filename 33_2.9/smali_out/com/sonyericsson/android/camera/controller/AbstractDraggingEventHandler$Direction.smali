.class public final enum Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
.super Ljava/lang/Enum;
.source "AbstractDraggingEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

.field public static final enum UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 43
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->NONE:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 44
    new-instance v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v3, "UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->UP:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 45
    new-instance v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v5, "DOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->DOWN:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 46
    new-instance v5, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->RIGHT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    .line 47
    new-instance v7, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const-string v9, "LEFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->LEFT:Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 42
    sput-object v9, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .registers 2

    .line 42
    const-class v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;
    .registers 1

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->$VALUES:[Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/controller/AbstractDraggingEventHandler$Direction;

    return-object v0
.end method
