.class public Lcom/tilks/arsc/main/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lb/c/a/d/c;

.field private e:Lb/c/a/d/c;

.field private f:Lcom/tilks/arsc/main/d;

.field private g:Landroid/app/PendingIntent;

.field private h:Lcom/tilks/arsc/main/MergeService;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Landroid/app/PendingIntent;Lcom/tilks/arsc/main/MergeService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/tilks/arsc/main/MergeService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop
	nop
	nop

    iput-object p2, p0, Lcom/tilks/arsc/main/e;->a:Ljava/util/List;
	nop
	nop

    iput-object p3, p0, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop
	nop
	nop

    iput-object p4, p0, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop

    iput-object p5, p0, Lcom/tilks/arsc/main/e;->i:Ljava/lang/String;
	nop
	nop
	nop
	nop
	nop

    iput-object p6, p0, Lcom/tilks/arsc/main/e;->j:Ljava/lang/String;
	nop
	nop

    return-void
	nop
	nop
	nop
.end method

.method private static a(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0
	nop
	nop
	nop

    if-eqz v0, :cond_0
	nop

    return-void
	nop
	nop
	nop

    :cond_0
    new-instance v0, Ljava/io/IOException;
	nop
	nop
	nop
	nop
	nop

    new-instance v1, Ljava/lang/StringBuilder;
	nop
	nop
	nop
	nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
	nop

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
	nop
	nop
	nop
	nop
	nop
.end method

.method private a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 4

    new-instance v0, Ljava/util/zip/ZipEntry;
	nop

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0
	nop
	nop
	nop

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1
	nop
	nop
	nop

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    const-wide/16 v1, -0x1
	nop

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    const-wide/16 v1, 0x0
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    new-instance v1, Ljava/io/BufferedInputStream;
	nop
	nop
	nop
	nop
	nop

    new-instance v2, Ljava/io/FileInputStream;
	nop
	nop
	nop
	nop

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lb/c/a/f/a;->a(Ljava/io/InputStream;)Ljava/util/zip/CRC32;

    move-result-object v2
	nop
	nop
	nop
	nop

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2
	nop
	nop

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    new-instance v0, Ljava/io/BufferedInputStream;
	nop
	nop
	nop

    new-instance v1, Ljava/io/FileInputStream;
	nop

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
	nop
	nop
	nop
.end method

.method private a(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipOutputStream;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0
	nop
	nop
	nop

    new-array v1, v1, [Ljava/lang/Object;
	nop
	nop
	nop
	nop

    const-string v2, "[*] Edit base manifest%n"
	nop
	nop
	nop
	nop
	nop

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop

    const-string v2, "result"
	nop
	nop

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
	nop
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop
	nop
	nop

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop
	nop
	nop

    const/16 v3, 0xc8
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v0}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    sget-object p1, La/a/b/a;->d:La/a/a/i;
	nop
	nop
	nop
	nop

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
	nop
	nop
	nop
	nop
	nop

    iput-object v1, p1, La/a/a/i;->a:[B
	nop
	nop

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string p1, "application"
	nop

    if-eqz p3, :cond_0
	nop
	nop
	nop
	nop
	nop

    const-string p3, "false"
	nop
	nop

    const-string v0, "extractNativeLibs"
	nop
	nop
	nop
	nop
	nop

    invoke-static {p1, p3, v0}, La/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "true"
	nop
	nop
	nop
	nop

    const-string v0, "isSplitRequired"
	nop
	nop

    invoke-static {p1, p3, v0}, La/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "meta-data"
	nop
	nop
	nop
	nop

    const-string p3, "com.android.vending.splits.required"
	nop
	nop
	nop

    invoke-static {p1, p3}, La/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "com.android.vending.splits"
	nop
	nop
	nop
	nop
	nop

    invoke-static {p1, p3}, La/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "com.android.vending.derived.apk.id"
	nop
	nop
	nop
	nop
	nop

    invoke-static {p1, p3}, La/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/zip/ZipEntry;
	nop
	nop
	nop
	nop

    const-string p3, "AndroidManifest.xml"
	nop
	nop
	nop
	nop
	nop

    invoke-direct {p1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0
	nop

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    sget-object p1, La/a/b/a;->d:La/a/a/i;
	nop
	nop
	nop
	nop
	nop

    iget-object p1, p1, La/a/a/i;->a:[B
	nop
	nop

    invoke-virtual {p2, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
	nop
	nop
	nop
.end method

.method private a(Ljava/util/zip/ZipInputStream;ZI)V
    .locals 3

    new-instance v0, Ljava/io/File;
	nop
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop

    const-string v2, "_resources.arsc"
	nop
	nop

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;
	nop
	nop

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v1}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    new-instance p1, Lb/c/a/b;
	nop
	nop
	nop

    invoke-direct {p1, v0}, Lb/c/a/b;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lb/c/a/b;->f()Lb/c/a/d/c;

    move-result-object v0
	nop
	nop
	nop
	nop

    if-nez v0, :cond_0
	nop
	nop
	nop
	nop

    invoke-virtual {p1}, Lb/c/a/a;->a()V

    return-void
	nop
	nop
	nop

    :cond_0
    iget-object v1, p0, Lcom/tilks/arsc/main/e;->f:Lcom/tilks/arsc/main/d;
	nop

    if-nez v1, :cond_1
	nop
	nop

    new-instance v1, Lcom/tilks/arsc/main/d;
	nop
	nop
	nop
	nop

    invoke-direct {v1}, Lcom/tilks/arsc/main/d;-><init>()V

    iput-object v1, p0, Lcom/tilks/arsc/main/e;->f:Lcom/tilks/arsc/main/d;
	nop
	nop
	nop

    :cond_1
    iget-object v1, p0, Lcom/tilks/arsc/main/e;->f:Lcom/tilks/arsc/main/d;
	nop
	nop
	nop

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->d:Lb/c/a/d/c;
	nop
	nop

    invoke-virtual {v1, v2, v0, p2, p3}, Lcom/tilks/arsc/main/d;->a(Lb/c/a/d/c;Lb/c/a/d/c;ZI)V

    iget-object p2, v0, Lb/c/a/d/c;->b:Lb/c/a/d/b;
	nop
	nop
	nop

    iget-object p2, p2, Lb/c/a/d/b;->a:Lb/c/a/d/b$a;
	nop
	nop
	nop
	nop
	nop

    iget p2, p2, Lb/c/a/d/b$a;->c:I
	nop
	nop

    if-lez p2, :cond_2
	nop
	nop
	nop
	nop

    iget-object p2, p0, Lcom/tilks/arsc/main/e;->a:Ljava/util/List;
	nop
	nop

    const/4 p3, 0x0
	nop

    new-array p3, p3, [Ljava/lang/Object;
	nop
	nop

    const-string v0, "!!! html styles in string !!!%n"
	nop
	nop

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
	nop

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lb/c/a/a;->a()V

    return-void
	nop
	nop
.end method

.method private static b(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0
	nop
	nop
	nop

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0
	nop
	nop
	nop
	nop

    if-eqz v0, :cond_0
	nop
	nop
	nop
	nop

    invoke-static {p0}, Lcom/tilks/arsc/main/e;->a(Ljava/io/File;)V

    :cond_0
    return-void
	nop
	nop
	nop
	nop
	nop
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;Z)Lb/c/a/b;
    .locals 5

    new-instance v0, Ljava/util/zip/ZipInputStream;
	nop
	nop
	nop
	nop

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0
	nop
	nop
	nop
	nop

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
	nop

    if-eqz v1, :cond_5
	nop
	nop

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2
	nop
	nop

    const-string v3, "resources.arsc"
	nop
	nop
	nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
	nop
	nop

    if-eqz v2, :cond_3
	nop

    new-instance p1, Ljava/io/File;
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop
	nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "base_resources.arsc"
	nop
	nop
	nop
	nop
	nop

    const-string v3, "_resources.arsc"
	nop
	nop

    if-eqz p3, :cond_0
	nop

    move-object v4, v2
	nop
	nop
	nop
	nop

    goto :goto_1
	nop

    :cond_0
    move-object v4, v3
	nop

    :goto_1
    :try_start_1
    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;
	nop

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    new-instance p1, Lb/c/a/b;
	nop
	nop
	nop

    new-instance v1, Ljava/io/File;
	nop
	nop
	nop
	nop
	nop

    iget-object v4, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop
	nop

    if-eqz p3, :cond_1
	nop

    goto :goto_2
	nop
	nop
	nop
	nop

    :cond_1
    move-object v2, v3
	nop
	nop
	nop

    :goto_2
    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lb/c/a/b;-><init>(Ljava/io/File;)V

    if-eqz p3, :cond_2
	nop

    invoke-virtual {p1}, Lb/c/a/b;->f()Lb/c/a/d/c;

    move-result-object v1
	nop
	nop
	nop
	nop

    iput-object v1, p0, Lcom/tilks/arsc/main/e;->d:Lb/c/a/d/c;
	nop
	nop

    goto :goto_3
	nop
	nop

    :cond_2
    invoke-virtual {p1}, Lb/c/a/b;->f()Lb/c/a/d/c;

    move-result-object v1
	nop

    iput-object v1, p0, Lcom/tilks/arsc/main/e;->e:Lb/c/a/d/c;
	nop
	nop
	nop
	nop
	nop

    goto :goto_3
	nop
	nop
	nop
	nop
	nop

    :cond_3
    if-nez p3, :cond_4
	nop

    goto :goto_0
	nop
	nop
	nop
	nop
	nop

    :cond_4
    new-instance v2, Ljava/util/zip/ZipEntry;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v2, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const-wide/16 v3, -0x1
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-static {v0, p2}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :goto_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
	nop
	nop
	nop

    :cond_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object p1
	nop
	nop
	nop
	nop

    :catchall_0
    move-exception p1
	nop

    :try_start_2
    throw p1
	nop
	nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2
	nop
	nop
	nop
	nop
	nop

    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4
	nop

    :catchall_2
    move-exception p3
	nop
	nop
	nop

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
	nop
	nop
	nop
.end method

.method public a(Ljava/io/InputStream;Z)Lb/c/a/b;
    .locals 7

    new-instance v0, Ljava/util/zip/ZipInputStream;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;
	nop
	nop
	nop
	nop

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0
	nop
	nop

    move-object v2, v1
	nop
	nop
	nop
	nop

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
	nop
	nop

    if-eqz v3, :cond_5
	nop
	nop

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3
	nop

    const-string v4, "resources.arsc"
	nop
	nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
	nop
	nop

    if-eqz v4, :cond_4
	nop
	nop
	nop

    new-instance v2, Ljava/io/File;
	nop
	nop
	nop
	nop

    iget-object v3, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop
	nop
	nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "base_resources.arsc"
	nop
	nop
	nop

    const-string v5, "_module_resources.arsc"
	nop
	nop
	nop
	nop
	nop

    if-eqz p2, :cond_1
	nop

    move-object v6, v4
	nop
	nop
	nop
	nop

    goto :goto_1
	nop
	nop
	nop
	nop
	nop

    :cond_1
    move-object v6, v5
	nop
	nop
	nop

    :goto_1
    :try_start_1
    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;
	nop

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v3}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Lb/c/a/b;
	nop
	nop
	nop

    new-instance v3, Ljava/io/File;
	nop
	nop
	nop
	nop
	nop

    iget-object v6, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop
	nop
	nop

    if-eqz p2, :cond_2
	nop
	nop
	nop
	nop

    goto :goto_2
	nop
	nop

    :cond_2
    move-object v4, v5
	nop
	nop
	nop

    :goto_2
    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lb/c/a/b;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_3
	nop
	nop

    invoke-virtual {v2}, Lb/c/a/b;->f()Lb/c/a/d/c;

    move-result-object v3
	nop
	nop
	nop

    iput-object v3, p0, Lcom/tilks/arsc/main/e;->d:Lb/c/a/d/c;
	nop
	nop
	nop
	nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0
	nop
	nop
	nop

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v1
	nop
	nop
	nop

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lb/c/a/b;->f()Lb/c/a/d/c;

    move-result-object v3
	nop

    iput-object v3, p0, Lcom/tilks/arsc/main/e;->e:Lb/c/a/d/c;
	nop
	nop
	nop
	nop
	nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0
	nop

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v1
	nop

    :cond_4
    :try_start_3
    const-string v4, "classes"
	nop
	nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
	nop
	nop
	nop

    if-eqz v4, :cond_0
	nop
	nop
	nop
	nop
	nop

    const-string v4, ".dex"
	nop
	nop
	nop
	nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4
	nop
	nop
	nop

    if-eqz v4, :cond_0
	nop
	nop
	nop

    if-eqz p2, :cond_0
	nop

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
	nop
	nop
	nop
	nop
	nop

    :cond_5
    if-eqz p2, :cond_6
	nop
	nop

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2
	nop
	nop
	nop
	nop

    const/4 v1, 0x1
	nop
	nop
	nop
	nop

    sub-int/2addr p2, v1
	nop

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
	nop
	nop
	nop
	nop

    check-cast p1, Ljava/lang/String;
	nop
	nop
	nop

    iput-object p1, p0, Lcom/tilks/arsc/main/e;->c:Ljava/lang/String;
	nop
	nop
	nop

    new-instance p1, Landroid/content/Intent;
	nop

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "result"
	nop
	nop

    const-string v3, "[*] last base dex: -> %s%n"
	nop
	nop
	nop

    new-array v1, v1, [Ljava/lang/Object;
	nop
	nop

    const/4 v4, 0x0
	nop
	nop

    iget-object v5, p0, Lcom/tilks/arsc/main/e;->c:Ljava/lang/String;
	nop
	nop
	nop
	nop

    aput-object v5, v1, v4
	nop
	nop
	nop

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop
	nop

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1
	nop

    iget-object p2, p0, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop

    const/16 v3, 0xc8
	nop
	nop
	nop
	nop

    invoke-virtual {p2, v1, v3, p1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v2
	nop
	nop
	nop
	nop

    :catchall_0
    move-exception p1
	nop
	nop
	nop
	nop

    :try_start_4
    throw p1
	nop
	nop
	nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2
	nop
	nop
	nop
	nop

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3
	nop

    :catchall_2
    move-exception v0
	nop
	nop

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
	nop
	nop
	nop
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/io/File;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "((.*)config(.*))|((.*)split(.*))"
	nop

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1
	nop
	nop
	nop

    new-instance v1, Ljava/util/zip/ZipFile;
	nop
	nop
	nop
	nop

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0
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
	nop

    const/4 v2, 0x0
	nop
	nop
	nop

    move-object v3, v1
	nop
	nop
	nop
	nop

    const/4 v4, 0x0
	nop

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5
	nop

    if-eqz v5, :cond_3
	nop
	nop

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5
	nop
	nop
	nop
	nop

    check-cast v5, Ljava/util/zip/ZipEntry;
	nop
	nop

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5
	nop

    const-string v6, ".apk"
	nop
	nop
	nop
	nop

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6
	nop
	nop

    if-nez v6, :cond_1
	nop
	nop
	nop

    goto :goto_0
	nop
	nop
	nop

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6
	nop

    const/4 v7, 0x1
	nop

    if-nez v6, :cond_0
	nop
	nop

    if-nez v4, :cond_2
	nop
	nop

    new-instance v3, Landroid/content/Intent;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-array v4, v7, [Ljava/lang/Object;
	nop
	nop

    aput-object v5, v4, v2
	nop
	nop
	nop
	nop
	nop

    const-string v6, "BaseName: -> %s%n%n"
	nop
	nop
	nop
	nop

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
	nop
	nop
	nop

    const-string v6, "result"
	nop
	nop
	nop
	nop

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3
	nop
	nop
	nop
	nop

    iget-object v4, p0, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop

    iget-object v6, p0, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop
	nop
	nop

    const/16 v8, 0xc8
	nop
	nop

    invoke-virtual {v4, v6, v8, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    move-object v3, v5
	nop
	nop
	nop
	nop
	nop

    const/4 v4, 0x1
	nop
	nop
	nop

    goto :goto_0
	nop
	nop
	nop

    :cond_2
    return-object v1
	nop
	nop

    :cond_3
    return-object v3
	nop
.end method

.method public a()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;
	nop
	nop
	nop
	nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;
	nop
	nop
	nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "base_resources.arsc"
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop
	nop
	nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;
	nop
	nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_resources.arsc"
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop
	nop
	nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;
	nop
	nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_module_resources.arsc"
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;
	nop
	nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resources.arsc"
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
	nop
	nop
	nop
	nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
	nop
	nop
	nop
	nop
	nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
	nop
	nop
	nop

    if-eqz v1, :cond_0
	nop
	nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
	nop

    check-cast v1, Ljava/lang/String;
	nop
	nop
	nop

    new-instance v2, Ljava/io/File;
	nop
	nop

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lcom/tilks/arsc/main/e;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
	nop
	nop
	nop
	nop
	nop

    :catch_0
    move-exception v1
	nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
	nop

    :cond_0
    return-void
	nop
	nop
	nop
	nop
	nop
.end method

.method public a(I)V
    .locals 3

    new-instance v0, Lcom/tilks/arsc/main/d;
	nop
	nop
	nop
	nop

    invoke-direct {v0}, Lcom/tilks/arsc/main/d;-><init>()V

    iput-object v0, p0, Lcom/tilks/arsc/main/e;->f:Lcom/tilks/arsc/main/d;
	nop
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->d:Lb/c/a/d/c;
	nop
	nop
	nop
	nop

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->e:Lb/c/a/d/c;
	nop

    invoke-virtual {v0, v1, v2, p1}, Lcom/tilks/arsc/main/d;->a(Lb/c/a/d/c;Lb/c/a/d/c;I)V

    return-void
	nop
	nop
.end method

.method public a(Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;Ljava/util/ArrayList;ZZIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZIZ)V"
        }
    .end annotation

    move-object/from16 v1, p0
	nop
	nop

    move-object/from16 v0, p2
	nop
	nop

    move-object/from16 v2, p3
	nop
	nop
	nop

    move/from16 v3, p5
	nop
	nop
	nop

    move/from16 v4, p7
	nop
	nop
	nop
	nop

    const-string v5, ".dex"
	nop
	nop
	nop
	nop

    const-string v6, "classes"
	nop
	nop

    new-instance v7, Ljava/util/zip/ZipInputStream;
	nop
	nop
	nop
	nop

    move-object/from16 v8, p1
	nop
	nop

    invoke-direct {v7, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8
	nop
	nop
	nop
	nop
	nop

    if-eqz v8, :cond_b
	nop
	nop

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9
	nop
	nop
	nop

    const-string v10, "AndroidManifest.xml"
	nop
	nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
	nop
	nop
	nop
	nop

    if-eqz v10, :cond_2
	nop
	nop

    if-eqz p4, :cond_1
	nop
	nop
	nop
	nop

    if-eqz v3, :cond_0
	nop
	nop

    goto :goto_1
	nop

    :cond_0
    invoke-direct {v1, v7, v0, v4}, Lcom/tilks/arsc/main/e;->a(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipOutputStream;Z)V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0
	nop
	nop
	nop

    :cond_2
    const-string v10, "META-INF/"
	nop
	nop
	nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
	nop
	nop

    if-eqz v10, :cond_5
	nop
	nop
	nop
	nop
	nop

    if-nez p4, :cond_3
	nop
	nop
	nop
	nop

    if-nez v3, :cond_3
	nop
	nop

    goto :goto_1
	nop
	nop
	nop

    :cond_3
    const-string v10, "META-INF/CERT.RSA"
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
	nop
	nop
	nop
	nop

    if-nez v10, :cond_1
	nop

    const-string v10, "META-INF/CERT.SF"
	nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
	nop
	nop
	nop
	nop

    if-nez v10, :cond_1
	nop
	nop

    const-string v10, "META-INF/MANIFEST.MF"
	nop
	nop
	nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10
	nop
	nop
	nop
	nop

    if-eqz v10, :cond_4
	nop
	nop

    goto :goto_1
	nop
	nop
	nop
	nop

    :cond_4
    move/from16 v10, p6
	nop
	nop
	nop
	nop

    goto/16 :goto_3
	nop
	nop
	nop
	nop
	nop

    :cond_5
    const-string v10, "resources.arsc"
	nop
	nop
	nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
	nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v11, 0xc8
	nop

    const/4 v12, 0x0
	nop
	nop
	nop
	nop
	nop

    const-string v13, "result"
	nop

    const/4 v14, 0x1
	nop

    if-eqz v10, :cond_7
	nop
	nop
	nop

    if-eqz p4, :cond_6
	nop
	nop

    goto :goto_1
	nop
	nop
	nop
	nop

    :cond_6
    :try_start_1
    new-instance v8, Landroid/content/Intent;
	nop
	nop
	nop

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v10, "[*] Merged arsc %s%n"
	nop
	nop
	nop
	nop
	nop

    new-array v14, v14, [Ljava/lang/Object;
	nop
	nop
	nop
	nop
	nop

    aput-object v9, v14, v12
	nop

    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9
	nop

    invoke-virtual {v8, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8
	nop
	nop
	nop

    iget-object v9, v1, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop
	nop
	nop
	nop

    iget-object v10, v1, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v9, v10, v11, v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    move/from16 v10, p6
	nop
	nop
	nop
	nop

    invoke-direct {v1, v7, v3, v10}, Lcom/tilks/arsc/main/e;->a(Ljava/util/zip/ZipInputStream;ZI)V

    goto :goto_1
	nop
	nop
	nop

    :cond_7
    move/from16 v10, p6
	nop
	nop
	nop
	nop

    if-eqz p4, :cond_9
	nop
	nop
	nop

    if-eqz v3, :cond_9
	nop
	nop

    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15
	nop
	nop
	nop
	nop
	nop

    if-eqz v15, :cond_a
	nop

    invoke-virtual {v9, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15
	nop
	nop
	nop
	nop
	nop

    if-eqz v15, :cond_a
	nop
	nop

    new-instance v8, Landroid/content/Intent;
	nop
	nop
	nop

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v15, "   -> %s in split%n"
	nop
	nop

    new-array v11, v14, [Ljava/lang/Object;
	nop
	nop
	nop
	nop
	nop

    aput-object v9, v11, v12
	nop
	nop
	nop
	nop

    invoke-static {v15, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9
	nop
	nop
	nop

    invoke-virtual {v8, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8
	nop
	nop
	nop
	nop

    iget-object v9, v1, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop

    iget-object v11, v1, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop

    const/16 v12, 0xc8
	nop
	nop
	nop

    invoke-virtual {v9, v11, v12, v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    iget-object v8, v1, Lcom/tilks/arsc/main/e;->c:Ljava/lang/String;
	nop
	nop
	nop
	nop
	nop

    const/16 v9, 0x73
	nop
	nop
	nop
	nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8
	nop
	nop

    iget-object v9, v1, Lcom/tilks/arsc/main/e;->c:Ljava/lang/String;
	nop
	nop
	nop

    const/16 v11, 0x2e
	nop

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9
	nop
	nop
	nop

    add-int/2addr v8, v14
	nop

    if-eq v8, v9, :cond_8
	nop
	nop

    iget-object v11, v1, Lcom/tilks/arsc/main/e;->c:Ljava/lang/String;
	nop
	nop
	nop
	nop

    invoke-virtual {v11, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
	nop
	nop
	nop

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
	nop
	nop
	nop

    add-int/2addr v8, v14
	nop
	nop
	nop
	nop

    new-instance v9, Ljava/lang/StringBuilder;
	nop
	nop
	nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
	nop
	nop
	nop

    new-instance v9, Ljava/util/zip/ZipEntry;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v9, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    goto :goto_2
	nop
	nop
	nop

    :cond_8
    const-string v8, "classes2.dex"
	nop
	nop
	nop
	nop
	nop

    new-instance v9, Ljava/util/zip/ZipEntry;
	nop
	nop
	nop

    invoke-direct {v9, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    :goto_2
    iput-object v8, v1, Lcom/tilks/arsc/main/e;->c:Ljava/lang/String;
	nop
	nop
	nop
	nop

    move-object/from16 v16, v9
	nop
	nop

    move-object v9, v8
	nop
	nop
	nop

    move-object/from16 v8, v16
	nop
	nop
	nop
	nop

    goto :goto_3
	nop
	nop

    :cond_9
    if-eqz v4, :cond_a
	nop
	nop
	nop
	nop
	nop

    const-string v11, "lib/"
	nop
	nop
	nop
	nop

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
	nop

    if-eqz v11, :cond_a
	nop
	nop

    new-instance v8, Ljava/util/zip/ZipEntry;
	nop
	nop

    invoke-direct {v8, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x8
	nop

    invoke-virtual {v8, v11}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    :cond_a
    :goto_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11
	nop
	nop

    const/4 v12, -0x1
	nop
	nop

    if-ne v11, v12, :cond_1
	nop

    new-instance v11, Ljava/util/zip/ZipEntry;
	nop
	nop
	nop
	nop

    invoke-direct {v11, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    const-wide/16 v12, -0x1
	nop
	nop
	nop

    invoke-virtual {v11, v12, v13}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v0, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-static {v7, v0}, Lb/a/b/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
	nop
	nop

    :cond_b
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    return-void
	nop
	nop
	nop
	nop

    :catchall_0
    move-exception v0
	nop
	nop
	nop
	nop

    move-object v2, v0
	nop

    :try_start_2
    throw v2
	nop
	nop
	nop
	nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0
	nop

    move-object v3, v0
	nop
	nop
	nop
	nop

    :try_start_3
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4
	nop
	nop
	nop

    :catchall_2
    move-exception v0
	nop
	nop
	nop
	nop
	nop

    move-object v4, v0
	nop
	nop
	nop
	nop

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
	nop
	nop
	nop
	nop
.end method

.method public a(Ljava/util/zip/ZipOutputStream;)V
    .locals 3

    new-instance v0, Ljava/io/File;
	nop
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->b:Ljava/lang/String;
	nop

    const-string v2, "resources.arsc"
	nop
	nop

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lb/c/a/c;
	nop

    invoke-direct {v1, v0}, Lb/c/a/c;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->d:Lb/c/a/d/c;
	nop
	nop
	nop

    invoke-virtual {v1, v2}, Lb/c/a/c;->a(Lb/c/a/d/c;)V

    invoke-virtual {v1}, Lb/c/a/a;->a()V

    invoke-direct {p0, v0, p1}, Lcom/tilks/arsc/main/e;->a(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    return-void
	nop
.end method

.method public a([B)V
    .locals 5

    new-instance v0, Lcom/tilks/arsc/main/b;
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->d:Lb/c/a/d/c;
	nop
	nop
	nop

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->e:Lb/c/a/d/c;
	nop
	nop

    iget-object v3, p0, Lcom/tilks/arsc/main/e;->g:Landroid/app/PendingIntent;
	nop
	nop

    iget-object v4, p0, Lcom/tilks/arsc/main/e;->h:Lcom/tilks/arsc/main/MergeService;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tilks/arsc/main/b;-><init>(Lb/c/a/d/c;Lb/c/a/d/c;Landroid/app/PendingIntent;Lcom/tilks/arsc/main/MergeService;)V

    invoke-virtual {v0, p1}, Lcom/tilks/arsc/main/b;->a([B)V

    return-void
	nop
	nop
	nop
.end method

.method public a([BLjava/io/BufferedOutputStream;)V
    .locals 3

    new-instance v0, Ljava/io/ByteArrayInputStream;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/File;
	nop
	nop
	nop
	nop
	nop

    iget-object v1, p0, Lcom/tilks/arsc/main/e;->i:Ljava/lang/String;
	nop
	nop

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;
	nop
	nop
	nop
	nop
	nop

    iget-object v2, p0, Lcom/tilks/arsc/main/e;->j:Ljava/lang/String;
	nop

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lb/a/a/c;
	nop
	nop
	nop
	nop
	nop

    invoke-direct {v2, p1, v1}, Lb/a/a/c;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v2, v0, p2}, Lb/a/a/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
	nop
	nop
	nop
	nop
	nop
.end method
