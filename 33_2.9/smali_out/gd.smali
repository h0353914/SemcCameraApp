.class final Lgd;
.super Lcs;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcs;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final a(Leh;I)Lcq;
    .registers 5

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v0, 0x6f

    const/4 v1, 0x1

    if-eq p1, v0, :cond_20

    const/16 v0, 0xc27

    if-eq p1, v0, :cond_16

    goto :goto_2a

    :cond_16
    const-string p1, "ah"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    move p0, v1

    goto :goto_2b

    :cond_20
    const-string p1, "o"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p0, -0x1

    :goto_2b
    const/4 p1, 0x0

    if-eqz p0, :cond_3a

    if-eq p0, v1, :cond_31

    return-object p1

    :cond_31
    const p0, 0x9198308

    if-eq p2, p0, :cond_37

    return-object p1

    :cond_37
    sget-object p0, Ls;->a:Lcq;

    return-object p0

    :cond_3a
    const p0, 0x9198309

    if-eq p2, p0, :cond_48

    const p0, 0xb706546

    if-eq p2, p0, :cond_45

    return-object p1

    .line 4
    :cond_45
    sget-object p0, Lab;->a:Lcq;

    return-object p0

    .line 5
    :cond_48
    sget-object p0, Lp;->a:Lcq;

    return-object p0
.end method
