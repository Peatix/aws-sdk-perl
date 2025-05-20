
package Paws::Discovery::StartBatchDeleteConfigurationTask;
  use Moose;
  has ConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'configurationIds' , required => 1);
  has ConfigurationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBatchDeleteConfigurationTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StartBatchDeleteConfigurationTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartBatchDeleteConfigurationTask - Arguments for method StartBatchDeleteConfigurationTask on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBatchDeleteConfigurationTask on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method StartBatchDeleteConfigurationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBatchDeleteConfigurationTask.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $StartBatchDeleteConfigurationTaskResponse =
      $discovery->StartBatchDeleteConfigurationTask(
      ConfigurationIds => [
        'MyConfigurationId', ...    # max: 200
      ],
      ConfigurationType => 'SERVER',

      );

    # Results:
    my $TaskId = $StartBatchDeleteConfigurationTaskResponse->TaskId;

# Returns a L<Paws::Discovery::StartBatchDeleteConfigurationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/StartBatchDeleteConfigurationTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationIds => ArrayRef[Str|Undef]

The list of configuration IDs that will be deleted by the task.



=head2 B<REQUIRED> ConfigurationType => Str

The type of configuration item to delete. Supported types are: SERVER.

Valid values are: C<"SERVER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBatchDeleteConfigurationTask in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

