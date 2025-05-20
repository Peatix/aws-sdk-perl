package Paws::ConnectCampaignsV2::DailyHours;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has FRIDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
  has MONDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
  has SATURDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
  has SUNDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
  has THURSDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
  has TUESDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
  has WEDNESDAY => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::TimeRange]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::DailyHours

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ConnectCampaignsV2::DailyHours object:

  $service_obj->Method(Att1 => { FRIDAY => $value, ..., WEDNESDAY => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ConnectCampaignsV2::DailyHours object:

  $result = $service_obj->Method(...);
  $result->Att1->FRIDAY

=head1 DESCRIPTION

Daily Hours map

=head1 ATTRIBUTES


=head2 FRIDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]


=head2 MONDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]


=head2 SATURDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]


=head2 SUNDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]


=head2 THURSDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]


=head2 TUESDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]


=head2 WEDNESDAY => ArrayRef[L<Paws::ConnectCampaignsV2::TimeRange>]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

