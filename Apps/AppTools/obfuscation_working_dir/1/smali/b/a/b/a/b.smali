.class public Lb/a/b/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb/a/b/a/a;",
            "Lb/a/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/a/b/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;
	nop
	nop
	nop

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/b/a/b;->a:Ljava/util/Map;
	nop

    new-instance v0, Ljava/util/ArrayList;
	nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/b/a/b;->b:Ljava/util/List;
	nop
	nop
	nop
	nop

    new-instance v0, Ljava/util/ArrayList;
	nop
	nop
	nop
	nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
	nop
	nop
.end method


# virtual methods
.method public a(Lb/a/b/a/a;)Lb/a/b/a/c;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/b;->a:Ljava/util/Map;
	nop
	nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
	nop
	nop
	nop
	nop

    check-cast p1, Lb/a/b/a/c;
	nop
	nop
	nop
	nop
	nop

    return-object p1
	nop
	nop
.end method

.method public a(Lb/a/b/a/a;Ljava/lang/String;Ljava/lang/String;)Lb/a/b/a/c;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/b;->a:Ljava/util/Map;
	nop
	nop
	nop
	nop
	nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
	nop
	nop
	nop
	nop
	nop

    check-cast v0, Lb/a/b/a/c;
	nop
	nop
	nop

    if-nez v0, :cond_0
	nop

    new-instance v0, Lb/a/b/a/c;
	nop
	nop
	nop
	nop

    invoke-direct {v0, p1, p2, p3}, Lb/a/b/a/c;-><init>(Lb/a/b/a/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lb/a/b/a/b;->a:Ljava/util/Map;
	nop

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb/a/b/a/b;->b:Ljava/util/List;
	nop
	nop
	nop
	nop

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
	nop
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/a/b/a/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/a/b;->b:Ljava/util/List;
	nop
	nop
	nop
	nop

    return-object v0
	nop
.end method
