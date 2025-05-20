
package Paws::ConnectCampaignsV2::UpdateCampaignSchedule;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::Schedule', traits => ['NameInRequest'], request_name => 'schedule', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCampaignSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/campaigns/{id}/schedule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::UpdateCampaignSchedule - Arguments for method UpdateCampaignSchedule on L<Paws::ConnectCampaignsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCampaignSchedule on the
L<AmazonConnectCampaignServiceV2|Paws::ConnectCampaignsV2> service. Use the attributes of this class
as arguments to method UpdateCampaignSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCampaignSchedule.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaignsV2');
    $connect -campaigns->UpdateCampaignSchedule(
      Id       => 'MyCampaignId',
      Schedule => {
        EndTime          => '1970-01-01T01:00:00',
        StartTime        => '1970-01-01T01:00:00',
        RefreshFrequency => 'MyIso8601Duration',     # max: 50; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/UpdateCampaignSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str





=head2 B<REQUIRED> Schedule => L<Paws::ConnectCampaignsV2::Schedule>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCampaignSchedule in L<Paws::ConnectCampaignsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

