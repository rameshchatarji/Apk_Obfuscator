.class Lcom/nabinbhandari/android/permissions/PermissionsActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nabinbhandari/android/permissions/PermissionsActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nabinbhandari/android/permissions/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/nabinbhandari/android/permissions/PermissionsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nabinbhandari/android/permissions/PermissionsActivity$a;->a:Lcom/nabinbhandari/android/permissions/PermissionsActivity;
	nop
	nop

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
	nop
	nop
	nop
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1
	nop
	nop
	nop
	nop

    if-ne p2, p1, :cond_0
	nop
	nop

    iget-object p1, p0, Lcom/nabinbhandari/android/permissions/PermissionsActivity$a;->a:Lcom/nabinbhandari/android/permissions/PermissionsActivity;
	nop

    invoke-static {p1}, Lcom/nabinbhandari/android/permissions/PermissionsActivity;->a(Lcom/nabinbhandari/android/permissions/PermissionsActivity;)Ljava/util/ArrayList;

    move-result-object p2
	nop
	nop
	nop

    invoke-static {p1, p2}, Lcom/nabinbhandari/android/permissions/PermissionsActivity;->a(Lcom/nabinbhandari/android/permissions/PermissionsActivity;Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p2
	nop
	nop
	nop
	nop
	nop

    const/16 v0, 0x1b19
	nop
	nop
	nop
	nop
	nop

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
	nop
	nop
	nop
	nop

    :cond_0
    iget-object p1, p0, Lcom/nabinbhandari/android/permissions/PermissionsActivity$a;->a:Lcom/nabinbhandari/android/permissions/PermissionsActivity;
	nop
	nop
	nop

    invoke-static {p1}, Lcom/nabinbhandari/android/permissions/PermissionsActivity;->b(Lcom/nabinbhandari/android/permissions/PermissionsActivity;)V

    :goto_0
    return-void
	nop
	nop
.end method