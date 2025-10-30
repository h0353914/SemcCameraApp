.class public final Lx;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final b:Lx;


# instance fields
.field public a:I

.field private c:Lw;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx;

    .line 1
    invoke-direct {v0}, Lx;-><init>()V

    sput-object v0, Lx;->b:Lx;

    const-class v1, Lx;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_32

    sget-object p1, Lx;->b:Lx;

    return-object p1

    .line 6
    :pswitch_9
    new-instance p1, Lu;

    .line 4
    invoke-direct {p1}, Lu;-><init>()V

    return-object p1

    :pswitch_f
    new-instance p1, Lx;

    .line 5
    invoke-direct {p1}, Lx;-><init>()V

    return-object p1

    :pswitch_15
    const/4 p1, 0x2

    .line 0
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "c"

    aput-object v0, p1, p2

    sget-object p2, Lx;->b:Lx;

    const-string v0, "\u0001\u0001\u0000\u0001\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u1009\u0001"

    .line 6
    invoke-static {p2, v0, p1}, Lx;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2a
    const/4 p1, 0x0

    return-object p1

    .line 7
    :pswitch_2c
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2a
        :pswitch_15
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
