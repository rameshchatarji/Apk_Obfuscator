.class public abstract Lcom/nabinbhandari/android/permissions/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
	nop
	nop
	nop
	nop
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/nabinbhandari/android/permissions/b;->a:Z
	nop
	nop

    if-eqz v0, :cond_1
	nop
	nop
	nop
	nop
	nop

    new-instance v0, Ljava/lang/StringBuilder;
	nop
	nop
	nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Just set not to ask again:"
	nop
	nop
	nop
	nop

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2
	nop
	nop

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
	nop
	nop
	nop
	nop
	nop

    if-eqz v1, :cond_0
	nop
	nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
	nop

    check-cast v1, Ljava/lang/String;
	nop
	nop
	nop
	nop
	nop

    const-string v2, " "
	nop
	nop
	nop
	nop

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
	nop
	nop
	nop
	nop

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
	nop
	nop
	nop
	nop
	nop

    invoke-static {p2}, Lcom/nabinbhandari/android/permissions/b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/nabinbhandari/android/permissions/a;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
	nop
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-boolean p1, Lcom/nabinbhandari/android/permissions/b;->a:Z
	nop
	nop
	nop
	nop
	nop

    if-eqz p1, :cond_1
	nop
	nop
	nop

    new-instance p1, Ljava/lang/StringBuilder;
	nop
	nop
	nop
	nop

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set not to ask again:"
	nop
	nop

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2
	nop
	nop
	nop
	nop

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
	nop

    if-eqz v0, :cond_0
	nop
	nop
	nop
	nop
	nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
	nop
	nop
	nop
	nop

    check-cast v0, Ljava/lang/String;
	nop
	nop
	nop

    const-string v1, " "
	nop

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
	nop

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
	nop
	nop

    invoke-static {p1}, Lcom/nabinbhandari/android/permissions/b;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0
	nop
	nop
	nop
	nop

    return p1
	nop
	nop
	nop
	nop
	nop
.end method

.method public abstract b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
