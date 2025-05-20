
package Paws::Config::DeleteServiceLinkedConfigurationRecorder;
  use Moose;
  has ServicePrincipal => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteServiceLinkedConfigurationRecorder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DeleteServiceLinkedConfigurationRecorderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteServiceLinkedConfigurationRecorder - Arguments for method DeleteServiceLinkedConfigurationRecorder on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteServiceLinkedConfigurationRecorder on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteServiceLinkedConfigurationRecorder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteServiceLinkedConfigurationRecorder.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DeleteServiceLinkedConfigurationRecorderResponse =
      $config->DeleteServiceLinkedConfigurationRecorder(
      ServicePrincipal => 'MyServicePrincipal',

      );

    # Results:
    my $Arn  = $DeleteServiceLinkedConfigurationRecorderResponse->Arn;
    my $Name = $DeleteServiceLinkedConfigurationRecorderResponse->Name;

# Returns a L<Paws::Config::DeleteServiceLinkedConfigurationRecorderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteServiceLinkedConfigurationRecorder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServicePrincipal => Str

The service principal of the Amazon Web Services service for the
service-linked configuration recorder that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteServiceLinkedConfigurationRecorder in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

