.class public final enum Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
.super Ljava/lang/Enum;
.source "ScrollContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

.field public static final enum OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v3, "EXIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v3, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v5, "OPENED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENED:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v5, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v7, "FULLSCREEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v7, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v9, "MOVING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->MOVING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v9, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v11, "OPENING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->OPENING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    new-instance v11, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const-string v13, "CLOSING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->CLOSING:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 94
    sput-object v13, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .registers 2

    .line 94
    const-class v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;
    .registers 1

    .line 94
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->$VALUES:[Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    return-object v0
.end method
