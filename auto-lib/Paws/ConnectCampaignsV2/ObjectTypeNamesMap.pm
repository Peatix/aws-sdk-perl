package Paws::ConnectCampaignsV2::ObjectTypeNamesMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has CampaignEmail => (is => 'ro', isa => 'Str');
  has CampaignOrchestration => (is => 'ro', isa => 'Str');
  has CampaignSMS => (is => 'ro', isa => 'Str');
  has CampaignTelephony => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::ObjectTypeNamesMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCampaignsV2::ObjectTypeNamesMap object:

  $service_obj->Method(Att1 => { CampaignEmail => $value, ..., CampaignTelephony => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCampaignsV2::ObjectTypeNamesMap object:

  $result = $service_obj->Method(...);
  $result->Att1->CampaignEmail

=head1 DESCRIPTION

Object type names map.

=head1 ATTRIBUTES


=head2 CampaignEmail => Str


=head2 CampaignOrchestration => Str


=head2 CampaignSMS => Str


=head2 CampaignTelephony => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

