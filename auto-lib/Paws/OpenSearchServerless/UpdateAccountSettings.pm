
package Paws::OpenSearchServerless::UpdateAccountSettings;
  use Moose;
  has CapacityLimits => (is => 'ro', isa => 'Paws::OpenSearchServerless::CapacityLimits', traits => ['NameInRequest'], request_name => 'capacityLimits' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccountSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::UpdateAccountSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateAccountSettings - Arguments for method UpdateAccountSettings on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccountSettings on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method UpdateAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccountSettings.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $UpdateAccountSettingsResponse = $aoss->UpdateAccountSettings(
      CapacityLimits => {
        MaxIndexingCapacityInOCU => 1,    # min: 2; OPTIONAL
        MaxSearchCapacityInOCU   => 1,    # min: 2; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $AccountSettingsDetail =
      $UpdateAccountSettingsResponse->AccountSettingsDetail;

# Returns a L<Paws::OpenSearchServerless::UpdateAccountSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/UpdateAccountSettings>

=head1 ATTRIBUTES


=head2 CapacityLimits => L<Paws::OpenSearchServerless::CapacityLimits>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccountSettings in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

