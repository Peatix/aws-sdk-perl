
package Paws::Config::PutServiceLinkedConfigurationRecorder;
  use Moose;
  has ServicePrincipal => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Config::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutServiceLinkedConfigurationRecorder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::PutServiceLinkedConfigurationRecorderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutServiceLinkedConfigurationRecorder - Arguments for method PutServiceLinkedConfigurationRecorder on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutServiceLinkedConfigurationRecorder on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutServiceLinkedConfigurationRecorder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutServiceLinkedConfigurationRecorder.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutServiceLinkedConfigurationRecorderResponse =
      $config->PutServiceLinkedConfigurationRecorder(
      ServicePrincipal => 'MyServicePrincipal',
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn  = $PutServiceLinkedConfigurationRecorderResponse->Arn;
    my $Name = $PutServiceLinkedConfigurationRecorderResponse->Name;

# Returns a L<Paws::Config::PutServiceLinkedConfigurationRecorderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutServiceLinkedConfigurationRecorder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServicePrincipal => Str

The service principal of the Amazon Web Services service for the
service-linked configuration recorder that you want to create.



=head2 Tags => ArrayRef[L<Paws::Config::Tag>]

The tags for a service-linked configuration recorder. Each tag consists
of a key and an optional value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutServiceLinkedConfigurationRecorder in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

