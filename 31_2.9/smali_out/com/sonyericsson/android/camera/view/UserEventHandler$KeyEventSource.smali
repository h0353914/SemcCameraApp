.class Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$EventSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEventSource"
.end annotation


# static fields
.field private static CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

.field private static FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;


# instance fields
.field private final mKeyCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1b

    .line 146
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    const/16 v0, 0x50

    .line 147
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    return-void
.end method

.method static synthetic access$1900()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    .registers 1

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->FOCUS:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    .registers 1

    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->CAMERA:Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    return-object v0
.end method

.method public static from(I)Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;
    .registers 2

    .line 177
    new-instance v0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 161
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 164
    :cond_13
    iget v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    check-cast p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    if-ne v2, p1, :cond_1c

    return v0

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 173
    iget v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$KeyEventSource;->mKeyCode:I

    return v0
.end method
