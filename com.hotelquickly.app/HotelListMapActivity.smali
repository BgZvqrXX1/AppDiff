.class public Lcom/hotelquickly/app/ui/HotelListMapActivity;
.super Lcom/hotelquickly/app/ui/BaseFragmentActivity;
.source "HotelListMapActivity.java"

# interfaces
.implements Lcom/hotelquickly/app/ui/da;


# instance fields
.field private a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

.field private b:Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

.field private c:Lcom/hotelquickly/app/i;

.field private d:Lcom/hotelquickly/app/m;

.field private e:Lcom/hotelquickly/app/crate/country/CityCrate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hotelquickly/app/crate/offer/OffersCrate;Lcom/hotelquickly/app/i;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    .line 131
    invoke-static {}, Lcom/hotelquickly/app/p;->a()Lcom/hotelquickly/app/p;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p0}, Lcom/hotelquickly/app/p;->w(Landroid/content/Context;)Lcom/hotelquickly/app/crate/country/CountriesCrate;

    move-result-object v1

    iget-object v0, p1, Lcom/hotelquickly/app/crate/offer/OffersCrate;->items:Ljava/util/List;

    .line 133
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;->city:Lcom/hotelquickly/app/crate/offer/CityCrate;

    iget v0, v0, Lcom/hotelquickly/app/crate/offer/CityCrate;->city_id:I

    invoke-virtual {v1, v0}, Lcom/hotelquickly/app/crate/country/CountriesCrate;->getCityById(I)Lcom/hotelquickly/app/crate/country/CityCrate;

    move-result-object v0

    iput-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    .line 134
    iput-object p2, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    .line 136
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/country/CityCrate;->city_name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a_(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OffersCrate;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;->country:Lcom/hotelquickly/app/crate/offer/CountryCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/CountryCrate;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final a_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string/jumbo v0, "List of Hotels > Map"

    return-object v0
.end method

.method protected final b_()V
    .registers 8

    .prologue
    .line 142
    new-instance v0, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;

    iget-object v2, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iget-object v3, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b:Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

    iget-object v4, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    iget-object v5, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    iget-object v6, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->d:Lcom/hotelquickly/app/m;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;-><init>(Landroid/content/Context;Lcom/hotelquickly/app/crate/offer/OffersCrate;Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;Lcom/hotelquickly/app/crate/country/CityCrate;Lcom/hotelquickly/app/i;Lcom/hotelquickly/app/m;)V

    .line 148
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-super {p0}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->b_()V

    .line 150
    return-void
.end method

.method public onBackPressed()V
    .registers 8

    .prologue
    .line 154
    new-instance v0, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;

    iget-object v2, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iget-object v3, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b:Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

    iget-object v4, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    iget-object v5, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    iget-object v6, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->d:Lcom/hotelquickly/app/m;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;-><init>(Landroid/content/Context;Lcom/hotelquickly/app/crate/offer/OffersCrate;Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;Lcom/hotelquickly/app/crate/country/CityCrate;Lcom/hotelquickly/app/i;Lcom/hotelquickly/app/m;)V

    .line 160
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-super {p0}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;->b(Landroid/os/Bundle;)Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

    move-result-object v1

    iput-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b:Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

    .line 50
    invoke-static {v0}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;->d(Landroid/os/Bundle;)Lcom/hotelquickly/app/m;

    move-result-object v1

    iput-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->d:Lcom/hotelquickly/app/m;

    .line 51
    if-nez p1, :cond_a1

    .line 52
    invoke-static {v0}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;->e(Landroid/os/Bundle;)Lcom/hotelquickly/app/crate/country/CityCrate;

    move-result-object v1

    iput-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    .line 53
    invoke-static {v0}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;->a(Landroid/os/Bundle;)Lcom/hotelquickly/app/crate/offer/OffersCrate;

    move-result-object v1

    iput-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    .line 54
    invoke-static {v0}, Lcom/hotelquickly/app/ui/intent/HotelMapIntent;->c(Landroid/os/Bundle;)Lcom/hotelquickly/app/i;

    move-result-object v0

    iput-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    .line 62
    :goto_33
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    .line 63
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b:Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

    .line 64
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    .line 65
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->d:Lcom/hotelquickly/app/m;

    .line 66
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    .line 68
    invoke-virtual {p0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OffersCrate;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;->city:Lcom/hotelquickly/app/crate/offer/CityCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/CityCrate;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a_(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OffersCrate;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/OfferCrate;->country:Lcom/hotelquickly/app/crate/offer/CountryCrate;

    iget-object v0, v0, Lcom/hotelquickly/app/crate/offer/CountryCrate;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v0, Lcom/hotelquickly/app/ui/cs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/ui/cs;

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iget-object v2, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->b:Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;

    iget-object v3, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    iget-object v4, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->d:Lcom/hotelquickly/app/m;

    iget-object v5, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/hotelquickly/app/ui/cs;->a(Lcom/hotelquickly/app/crate/offer/OffersCrate;Lcom/hotelquickly/app/crate/MultinightConfigurationCrate;Lcom/hotelquickly/app/i;Lcom/hotelquickly/app/m;Lcom/hotelquickly/app/crate/country/CityCrate;)Lcom/hotelquickly/app/ui/cs;

    move-result-object v0

    :cond_8d
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    const-class v3, Lcom/hotelquickly/app/ui/cs;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    return-void

    .line 56
    :cond_a1
    const-string/jumbo v0, "CITY_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/crate/country/CityCrate;

    iput-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    .line 57
    const-string/jumbo v0, "OFFERS_STATE_LEET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/crate/offer/OffersCrate;

    iput-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    .line 58
    const-string/jumbo v0, "OFFERS_GROUP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/hotelquickly/app/i;

    iput-object v0, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    goto/16 :goto_33
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .registers 4

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/hotelquickly/app/ui/HotelListMapActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 103
    invoke-super {p0, p1}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 118
    invoke-super {p0, p1}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 110
    :pswitch_d
    new-instance v1, Lcom/hotelquickly/app/ui/intent/SupportIntent;

    invoke-direct {v1, p0}, Lcom/hotelquickly/app/ui/intent/SupportIntent;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1, p0}, Lcom/hotelquickly/app/ui/intent/SupportIntent;->a(Landroid/app/Activity;)V

    goto :goto_c

    .line 114
    :pswitch_16
    new-instance v1, Lcom/hotelquickly/app/ui/intent/SettingIntent;

    invoke-direct {v1, p0}, Lcom/hotelquickly/app/ui/intent/SettingIntent;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v1}, Lcom/hotelquickly/app/ui/intent/SettingIntent;->a()V

    goto :goto_c

    .line 108
    nop

    :pswitch_data_20
    .packed-switch 0x7f0801ce
        :pswitch_d
        :pswitch_16
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    const-string/jumbo v0, "OFFERS_STATE_LEET"

    iget-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->a:Lcom/hotelquickly/app/crate/offer/OffersCrate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    const-string/jumbo v0, "CITY_STATE"

    iget-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->e:Lcom/hotelquickly/app/crate/country/CityCrate;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 169
    const-string/jumbo v0, "OFFERS_GROUP"

    iget-object v1, p0, Lcom/hotelquickly/app/ui/HotelListMapActivity;->c:Lcom/hotelquickly/app/i;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 170
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/hotelquickly/app/ui/BaseFragmentActivity;->onStart()V

    .line 97
    invoke-static {p0}, Lcom/hotelquickly/app/e/ab;->a(Landroid/content/Context;)Lcom/hotelquickly/app/e/ab;

    move-result-object v0

    const-string/jumbo v1, "show.screen.map.of.hotels"

    invoke-virtual {v0, p0, v1}, Lcom/hotelquickly/app/e/ab;->a(Lcom/hotelquickly/app/ui/classes/l;Ljava/lang/String;)V

    .line 98
    return-void
.end method
