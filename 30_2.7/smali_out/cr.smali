.class final Lcr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr;->a:Ljava/lang/Object;

    iput p2, p0, Lcr;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2
    instance-of v0, p1, Lcr;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 3
    check-cast p1, Lcr;

    iget-object v0, p0, Lcr;->a:Ljava/lang/Object;

    .line 4
    iget-object v2, p1, Lcr;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_15

    iget v0, p0, Lcr;->b:I

    iget p1, p1, Lcr;->b:I

    if-ne v0, p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcr;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcr;->b:I

    add-int/2addr v0, v1

    return v0
.end method
