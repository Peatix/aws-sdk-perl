package Paws::Transcribe::LanguageIdSettingsMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has abGE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has afZA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has arAE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has arSA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has astES => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has azAZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has baRU => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has beBY => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has bgBG => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has bnIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has bsBA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has caES => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ckbIQ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ckbIR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has csCZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has cyWL => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has daDK => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has deCH => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has deDE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has elGR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enAB => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enAU => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enGB => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enIE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enNZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enUS => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enWL => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has enZA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has esES => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has esUS => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has etET => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has euES => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has faIR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has fiFI => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has frCA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has frFR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has glES => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has guIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has haNG => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has heIL => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has hiIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has hrHR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has huHU => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has hyAM => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has idID => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has isIS => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has itIT => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has jaJP => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has kabDZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has kaGE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has kkKZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has knIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has koKR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has kyKG => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has lgIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ltLT => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has lvLV => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has mhrRU => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has miNZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has mkMK => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has mlIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has mnMN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has mrIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has msMY => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has mtMT => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has nlNL => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has noNO => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has orIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has paIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has plPL => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has psAF => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ptBR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ptPT => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has roRO => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ruRU => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has rwRW => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has siLK => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has skSK => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has slSI => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has soSO => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has srRS => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has suID => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has svSE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has swBI => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has swKE => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has swRW => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has swTZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has swUG => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has taIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has teIN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has thTH => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has tlPH => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has trTR => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ttRU => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ugCN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has ukUA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has uzUZ => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has viVN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has woSN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has zhCN => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has zhHK => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has zhTW => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
  has zuZA => (is => 'ro', isa => 'Paws::Transcribe::LanguageIdSettings');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::LanguageIdSettingsMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::LanguageIdSettingsMap object:

  $service_obj->Method(Att1 => { abGE => $value, ..., zuZA => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::LanguageIdSettingsMap object:

  $result = $service_obj->Method(...);
  $result->Att1->abGE

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 abGE => L<Paws::Transcribe::LanguageIdSettings>


=head2 afZA => L<Paws::Transcribe::LanguageIdSettings>


=head2 arAE => L<Paws::Transcribe::LanguageIdSettings>


=head2 arSA => L<Paws::Transcribe::LanguageIdSettings>


=head2 astES => L<Paws::Transcribe::LanguageIdSettings>


=head2 azAZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 baRU => L<Paws::Transcribe::LanguageIdSettings>


=head2 beBY => L<Paws::Transcribe::LanguageIdSettings>


=head2 bgBG => L<Paws::Transcribe::LanguageIdSettings>


=head2 bnIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 bsBA => L<Paws::Transcribe::LanguageIdSettings>


=head2 caES => L<Paws::Transcribe::LanguageIdSettings>


=head2 ckbIQ => L<Paws::Transcribe::LanguageIdSettings>


=head2 ckbIR => L<Paws::Transcribe::LanguageIdSettings>


=head2 csCZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 cyWL => L<Paws::Transcribe::LanguageIdSettings>


=head2 daDK => L<Paws::Transcribe::LanguageIdSettings>


=head2 deCH => L<Paws::Transcribe::LanguageIdSettings>


=head2 deDE => L<Paws::Transcribe::LanguageIdSettings>


=head2 elGR => L<Paws::Transcribe::LanguageIdSettings>


=head2 enAB => L<Paws::Transcribe::LanguageIdSettings>


=head2 enAU => L<Paws::Transcribe::LanguageIdSettings>


=head2 enGB => L<Paws::Transcribe::LanguageIdSettings>


=head2 enIE => L<Paws::Transcribe::LanguageIdSettings>


=head2 enIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 enNZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 enUS => L<Paws::Transcribe::LanguageIdSettings>


=head2 enWL => L<Paws::Transcribe::LanguageIdSettings>


=head2 enZA => L<Paws::Transcribe::LanguageIdSettings>


=head2 esES => L<Paws::Transcribe::LanguageIdSettings>


=head2 esUS => L<Paws::Transcribe::LanguageIdSettings>


=head2 etET => L<Paws::Transcribe::LanguageIdSettings>


=head2 euES => L<Paws::Transcribe::LanguageIdSettings>


=head2 faIR => L<Paws::Transcribe::LanguageIdSettings>


=head2 fiFI => L<Paws::Transcribe::LanguageIdSettings>


=head2 frCA => L<Paws::Transcribe::LanguageIdSettings>


=head2 frFR => L<Paws::Transcribe::LanguageIdSettings>


=head2 glES => L<Paws::Transcribe::LanguageIdSettings>


=head2 guIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 haNG => L<Paws::Transcribe::LanguageIdSettings>


=head2 heIL => L<Paws::Transcribe::LanguageIdSettings>


=head2 hiIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 hrHR => L<Paws::Transcribe::LanguageIdSettings>


=head2 huHU => L<Paws::Transcribe::LanguageIdSettings>


=head2 hyAM => L<Paws::Transcribe::LanguageIdSettings>


=head2 idID => L<Paws::Transcribe::LanguageIdSettings>


=head2 isIS => L<Paws::Transcribe::LanguageIdSettings>


=head2 itIT => L<Paws::Transcribe::LanguageIdSettings>


=head2 jaJP => L<Paws::Transcribe::LanguageIdSettings>


=head2 kabDZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 kaGE => L<Paws::Transcribe::LanguageIdSettings>


=head2 kkKZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 knIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 koKR => L<Paws::Transcribe::LanguageIdSettings>


=head2 kyKG => L<Paws::Transcribe::LanguageIdSettings>


=head2 lgIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 ltLT => L<Paws::Transcribe::LanguageIdSettings>


=head2 lvLV => L<Paws::Transcribe::LanguageIdSettings>


=head2 mhrRU => L<Paws::Transcribe::LanguageIdSettings>


=head2 miNZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 mkMK => L<Paws::Transcribe::LanguageIdSettings>


=head2 mlIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 mnMN => L<Paws::Transcribe::LanguageIdSettings>


=head2 mrIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 msMY => L<Paws::Transcribe::LanguageIdSettings>


=head2 mtMT => L<Paws::Transcribe::LanguageIdSettings>


=head2 nlNL => L<Paws::Transcribe::LanguageIdSettings>


=head2 noNO => L<Paws::Transcribe::LanguageIdSettings>


=head2 orIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 paIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 plPL => L<Paws::Transcribe::LanguageIdSettings>


=head2 psAF => L<Paws::Transcribe::LanguageIdSettings>


=head2 ptBR => L<Paws::Transcribe::LanguageIdSettings>


=head2 ptPT => L<Paws::Transcribe::LanguageIdSettings>


=head2 roRO => L<Paws::Transcribe::LanguageIdSettings>


=head2 ruRU => L<Paws::Transcribe::LanguageIdSettings>


=head2 rwRW => L<Paws::Transcribe::LanguageIdSettings>


=head2 siLK => L<Paws::Transcribe::LanguageIdSettings>


=head2 skSK => L<Paws::Transcribe::LanguageIdSettings>


=head2 slSI => L<Paws::Transcribe::LanguageIdSettings>


=head2 soSO => L<Paws::Transcribe::LanguageIdSettings>


=head2 srRS => L<Paws::Transcribe::LanguageIdSettings>


=head2 suID => L<Paws::Transcribe::LanguageIdSettings>


=head2 svSE => L<Paws::Transcribe::LanguageIdSettings>


=head2 swBI => L<Paws::Transcribe::LanguageIdSettings>


=head2 swKE => L<Paws::Transcribe::LanguageIdSettings>


=head2 swRW => L<Paws::Transcribe::LanguageIdSettings>


=head2 swTZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 swUG => L<Paws::Transcribe::LanguageIdSettings>


=head2 taIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 teIN => L<Paws::Transcribe::LanguageIdSettings>


=head2 thTH => L<Paws::Transcribe::LanguageIdSettings>


=head2 tlPH => L<Paws::Transcribe::LanguageIdSettings>


=head2 trTR => L<Paws::Transcribe::LanguageIdSettings>


=head2 ttRU => L<Paws::Transcribe::LanguageIdSettings>


=head2 ugCN => L<Paws::Transcribe::LanguageIdSettings>


=head2 ukUA => L<Paws::Transcribe::LanguageIdSettings>


=head2 uzUZ => L<Paws::Transcribe::LanguageIdSettings>


=head2 viVN => L<Paws::Transcribe::LanguageIdSettings>


=head2 woSN => L<Paws::Transcribe::LanguageIdSettings>


=head2 zhCN => L<Paws::Transcribe::LanguageIdSettings>


=head2 zhHK => L<Paws::Transcribe::LanguageIdSettings>


=head2 zhTW => L<Paws::Transcribe::LanguageIdSettings>


=head2 zuZA => L<Paws::Transcribe::LanguageIdSettings>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

