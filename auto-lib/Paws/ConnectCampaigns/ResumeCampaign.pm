
package Paws::ConnectCampaigns::ResumeCampaign;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeCampaign');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/campaigns/{id}/resume');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::ResumeCampaign - Arguments for method ResumeCampaign on L<Paws::ConnectCampaigns>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResumeCampaign on the
L<AmazonConnectCampaignService|Paws::ConnectCampaigns> service. Use the attributes of this class
as arguments to method ResumeCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResumeCampaign.

=head1 SYNOPSIS

    my $connect-campaigns = Paws->service('ConnectCampaigns');
    $connect -campaigns->ResumeCampaign(
      Id => 'MyCampaignId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect-campaigns/ResumeCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResumeCampaign in L<Paws::ConnectCampaigns>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

