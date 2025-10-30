.class final Lae;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldh;


# static fields
.field static final a:Ldh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lae;

    .line 1
    invoke-direct {v0}, Lae;-><init>()V

    sput-object v0, Lae;->a:Ldh;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 2

    .line 3
    invoke-static {p1}, Laf;->a(I)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
