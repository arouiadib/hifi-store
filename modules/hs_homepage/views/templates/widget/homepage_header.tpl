<section id="home">
    {block name='header_slider'}
        <ul class="cb-slideshow">
            <li><span></span></li>
            {*The first li element is for blog post and not included in slideshow*}
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
        </ul>
    {/block}
    {block name='header_content'}
        <div class="header-content">
            <div class="header-content-inner">
                <hr />
                <h1>{l s='Summary slide title' d='Modules.Hshomepage.Shop'}</h1>
                <br /><br />
                <a href="#about" class="btn btn-primary btn-xl page-scroll">
                    {l s='More details' d='Modules.Hshomepage.Shop'}
                </a>
            </div>
        </div>
    {/block}
</section>

<section id="about" class="bg-secondary">
    <div class="container text-xs-center">
        <h2 class="section-heading">{l s='Introduction title' d='Modules.Hshomepage.Shop'}</h2>
        <hr class="light">
        <p>
            {l s='Introduction heading' d='Modules.Hshomepage.Shop'}
        </p>
        <div class="row">
            <div class="col-lg-4 pl-0 pr-0 text-xs-center axe">
                <div class="axe-inner">
                    <div id="axe-reparation" class="axe-photo">
                        <ul class="">
                            <li><span></span></li>
                            <li><span></span></li>
                            <li><span></span></li>
                        </ul>
                    </div>
                    <div class="axe-text">
                        <p class="axe-head">{l s='1st axis heading' d='Modules.Hshomepage.Shop'}</p>
                        <p>{l s='1st axis summary' d='Modules.Hshomepage.Shop'}</p>
                        <a href="#contactSection" class="btn btn-primary btn-l page-scroll">
                            {l s='1st axis button' d='Modules.Hshomepage.Shop'}
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 pl-0 pr-0 text-xs-center axe">
                <div class="axe-inner">
                    <div id="axe-commercial" class="axe-photo">
                        <ul class="">
                            <li><span></span></li>
                            <li><span></span></li>
                            <li><span></span></li>
                        </ul>
                    </div>
                    <div class="axe-text">
                        <p class="axe-head">{l s='2nd axis heading' d='Modules.Hshomepage.Shop'}</p>
                        <p>{l s='2nd axis summary' d='Modules.Hshomepage.Shop'}</p>
                        <a href="#wrapper" class="btn btn-primary btn-l page-scroll">
                            {l s='2nd axis button' d='Modules.Hshomepage.Shop'}
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 pl-0 pr-0 text-xs-center axe">
                <div class="axe-inner">
                    <div id="axe-rental" class="axe-photo">
                        <ul class="">
                            <li><span></span></li>
                            <li><span></span></li>
                            <li><span></span></li>
                        </ul>
                    </div>
                    <div class="axe-text">
                        <p class="axe-head">{l s='3rd axis heading' d='Modules.Hshomepage.Shop'}</p>
                        <p>{l s='3rd axis summary' d='Modules.Hshomepage.Shop'}</p>
                        <a href="#blog-recent-posts-home" class="btn btn-primary btn-l page-scroll">
                            {l s='3rd axis button' d='Modules.Hshomepage.Shop'}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>