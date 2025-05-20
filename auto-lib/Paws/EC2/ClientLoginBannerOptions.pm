package Paws::EC2::ClientLoginBannerOptions;
  use Moose;
  has BannerText => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientLoginBannerOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientLoginBannerOptions object:

  $service_obj->Method(Att1 => { BannerText => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientLoginBannerOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->BannerText

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BannerText => Str

Customizable text that will be displayed in a banner on Amazon Web
Services provided clients when a VPN session is established. UTF-8
encoded characters only. Maximum of 1400 characters.


=head2 Enabled => Bool

Enable or disable a customizable text banner that will be displayed on
Amazon Web Services provided clients when a VPN session is established.

Valid values: C<true | false>

Default value: C<false>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
