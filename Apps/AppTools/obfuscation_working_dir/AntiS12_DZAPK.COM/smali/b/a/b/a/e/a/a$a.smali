.class public Lb/a/b/a/e/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/b/a/e/a/a$a;->a:Ljava/lang/String;
	nop
	nop
	nop
	nop
	nop

    iput-object p2, p0, Lb/a/b/a/e/a/a$a;->b:Ljava/lang/String;
	nop
	nop
	nop
	nop

    return-void
	nop
	nop
	nop
	nop
	nop
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/e/a/a$a;->b:Ljava/lang/String;
	nop

    return-object v0
	nop
	nop
	nop
	nop
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/b/a/e/a/a$a;->a:Ljava/lang/String;
	nop
	nop
	nop

    return-object v0
	nop
	nop
	nop
.end method