.class public Lb/b/a/a/a/b/d;
.super Landroid/graphics/drawable/Drawable;
.source ""


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;FF)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lb/b/a/a/a/b/d;->a:Landroid/graphics/drawable/Drawable;
	nop
	nop
	nop
	nop
	nop

    invoke-static {p2}, Lb/b/a/a/a/b/c;->a(F)F

    move-result p1
	nop
	nop

    float-to-int p1, p1
	nop
	nop
	nop
	nop

    invoke-static {p3}, Lb/b/a/a/a/b/c;->a(F)F

    move-result p2
	nop
	nop
	nop

    float-to-int p2, p2
	nop
	nop
	nop
	nop
	nop

    const/4 p3, 0x0
	nop
	nop
	nop
	nop

    invoke-virtual {p0, p3, p3, p1, p2}, Lb/b/a/a/a/b/d;->setBounds(IIII)V

    return-void
	nop
	nop
.end method


# virtual methods
.method protected a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/a/b/d;->a:Landroid/graphics/drawable/Drawable;
	nop
	nop
	nop
	nop
	nop

    return-object v0
	nop
	nop
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop
	nop

    if-eqz v0, :cond_0
	nop

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
	nop
	nop
	nop
	nop
.end method

.method public getIntrinsicHeight()I
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop

    if-eqz v0, :cond_0
	nop
	nop

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0
	nop
	nop
	nop

    goto :goto_0
	nop

    :cond_0
    const/4 v0, 0x0
	nop
	nop
	nop

    :goto_0
    return v0
	nop
.end method

.method public getIntrinsicWidth()I
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop
	nop
	nop
	nop

    if-eqz v0, :cond_0
	nop
	nop
	nop

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0
	nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0
	nop
	nop

    goto :goto_0
	nop
	nop
	nop
	nop
	nop

    :cond_0
    const/4 v0, 0x0
	nop
	nop

    :goto_0
    return v0
	nop
	nop
	nop
	nop
.end method

.method public getOpacity()I
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop
	nop
	nop
	nop

    if-eqz v0, :cond_0
	nop

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0
	nop
	nop

    goto :goto_0
	nop
	nop
	nop

    :cond_0
    const/4 v0, 0x0
	nop

    :goto_0
    return v0
	nop
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop
	nop

    if-eqz v0, :cond_0
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
	nop
	nop
	nop
	nop
.end method

.method public setBounds(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop
	nop
	nop

    if-eqz v0, :cond_0
	nop
	nop
	nop
	nop

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
	nop
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/a/b/d;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0
	nop
	nop
	nop
	nop
	nop

    if-eqz v0, :cond_0
	nop

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
	nop
	nop
	nop
	nop
	nop
.end method
