.class public Lb/c/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;
	nop
	nop
	nop

    const-string v1, "rw"
	nop
	nop
	nop
	nop

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop

    return-void
	nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
	nop
	nop
	nop
	nop
	nop
.end method

.method final a(B)V
    .locals 2

    const/4 v0, 0x1
	nop
	nop
	nop
	nop
	nop

    new-array v0, v0, [B
	nop
	nop

    and-int/lit16 p1, p1, 0xff
	nop
	nop
	nop

    int-to-byte p1, p1
	nop
	nop
	nop
	nop

    const/4 v1, 0x0
	nop
	nop
	nop
	nop

    aput-byte p1, v0, v1
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {p0, v0}, Lb/c/a/a;->a([B)V

    return-void
	nop
	nop
	nop
	nop
.end method

.method final a(I)V
    .locals 4

    invoke-virtual {p0}, Lb/c/a/a;->b()J

    move-result-wide v0
	nop

    int-to-long v2, p1
	nop

    sub-long/2addr v0, v2
	nop
	nop
	nop

    invoke-virtual {p0, v0, v1}, Lb/c/a/a;->a(J)V

    return-void
	nop
	nop
	nop
	nop
.end method

.method final a(J)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
	nop
	nop
	nop
	nop
.end method

.method final a(S)V
    .locals 3

    const/4 v0, 0x2
	nop
	nop

    new-array v0, v0, [B
	nop
	nop
	nop
	nop
	nop

    shr-int/lit8 v1, p1, 0x8
	nop
	nop

    and-int/lit16 v1, v1, 0xff
	nop
	nop
	nop
	nop
	nop

    int-to-byte v1, v1
	nop

    const/4 v2, 0x1
	nop
	nop
	nop
	nop

    aput-byte v1, v0, v2
	nop
	nop
	nop

    and-int/lit16 p1, p1, 0xff
	nop
	nop
	nop
	nop

    int-to-byte p1, p1
	nop
	nop
	nop
	nop
	nop

    const/4 v1, 0x0
	nop
	nop
	nop
	nop

    aput-byte p1, v0, v1
	nop
	nop
	nop

    invoke-virtual {p0, v0}, Lb/c/a/a;->a([B)V

    return-void
	nop
	nop
	nop
	nop
	nop
.end method

.method final a([B)V
    .locals 1

    iget-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
	nop
	nop
	nop
.end method

.method final b()J
    .locals 2

    iget-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop
	nop
	nop

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0
	nop
	nop
	nop

    return-wide v0
	nop
	nop
.end method

.method final b(I)[B
    .locals 1

    new-array p1, p1, [B
	nop

    iget-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop
	nop

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    return-object p1
	nop
	nop
	nop
	nop
	nop
.end method

.method final c()B
    .locals 1

    iget-object v0, p0, Lb/c/a/a;->a:Ljava/io/RandomAccessFile;
	nop
	nop

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0
	nop

    return v0
	nop
	nop
	nop
.end method

.method final c(I)[I
    .locals 3

    new-array v0, p1, [I
	nop

    const/4 v1, 0x0
	nop
	nop
	nop
	nop

    :goto_0
    if-ge v1, p1, :cond_0
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {p0}, Lb/c/a/a;->d()I

    move-result v2
	nop
	nop
	nop

    aput v2, v0, v1
	nop
	nop
	nop
	nop
	nop

    add-int/lit8 v1, v1, 0x1
	nop
	nop

    goto :goto_0
	nop
	nop

    :cond_0
    return-object v0
	nop
.end method

.method final d()I
    .locals 2

    const/4 v0, 0x4
	nop
	nop

    invoke-virtual {p0, v0}, Lb/c/a/a;->b(I)[B

    move-result-object v0
	nop
	nop

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
	nop
	nop
	nop

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
	nop

    return v0
	nop
	nop
.end method

.method final d(I)V
    .locals 3

    const/4 v0, 0x4
	nop
	nop
	nop
	nop
	nop

    new-array v0, v0, [B
	nop
	nop
	nop
	nop

    shr-int/lit8 v1, p1, 0x18
	nop
	nop
	nop

    and-int/lit16 v1, v1, 0xff
	nop
	nop

    int-to-byte v1, v1
	nop
	nop

    const/4 v2, 0x3
	nop
	nop

    aput-byte v1, v0, v2
	nop
	nop
	nop
	nop
	nop

    shr-int/lit8 v1, p1, 0x10
	nop
	nop
	nop

    and-int/lit16 v1, v1, 0xff
	nop
	nop
	nop

    int-to-byte v1, v1
	nop
	nop
	nop
	nop
	nop

    const/4 v2, 0x2
	nop

    aput-byte v1, v0, v2
	nop
	nop
	nop

    shr-int/lit8 v1, p1, 0x8
	nop
	nop
	nop
	nop
	nop

    and-int/lit16 v1, v1, 0xff
	nop
	nop
	nop
	nop
	nop

    int-to-byte v1, v1
	nop
	nop

    const/4 v2, 0x1
	nop
	nop
	nop
	nop
	nop

    aput-byte v1, v0, v2
	nop
	nop

    and-int/lit16 p1, p1, 0xff
	nop
	nop
	nop
	nop

    int-to-byte p1, p1
	nop
	nop
	nop
	nop
	nop

    const/4 v1, 0x0
	nop
	nop
	nop

    aput-byte p1, v0, v1
	nop
	nop

    invoke-virtual {p0, v0}, Lb/c/a/a;->a([B)V

    return-void
	nop
	nop
	nop
	nop
.end method

.method final e()S
    .locals 2

    const/4 v0, 0x2
	nop

    invoke-virtual {p0, v0}, Lb/c/a/a;->b(I)[B

    move-result-object v0
	nop

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
	nop

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
	nop
	nop

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0
	nop
	nop
	nop
	nop
	nop

    return v0
	nop
	nop
.end method
