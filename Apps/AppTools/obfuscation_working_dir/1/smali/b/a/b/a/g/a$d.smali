.class Lb/a/b/a/g/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lb/a/b/a/g/a$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lb/a/b/a/g/a$c;->a()Ljava/nio/ByteBuffer;

    move-result-object v0
	nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0
	nop
	nop
	nop
	nop

    iput-object v0, p0, Lb/a/b/a/g/a$d;->a:Ljava/nio/ByteBuffer;
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {p1}, Lb/a/b/a/g/a$c;->a()Ljava/nio/ByteBuffer;

    move-result-object p1
	nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p1
	nop
	nop

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lb/a/b/a/g/a$d;->a:Ljava/nio/ByteBuffer;
	nop
	nop

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1
	nop

    div-int/lit8 p1, p1, 0x4
	nop

    return-void
	nop
	nop
	nop
	nop
	nop
.end method