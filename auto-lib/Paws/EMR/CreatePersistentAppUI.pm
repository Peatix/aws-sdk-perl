
package Paws::EMR::CreatePersistentAppUI;
  use Moose;
  has EMRContainersConfig => (is => 'ro', isa => 'Paws::EMR::EMRContainersConfig');
  has ProfilerType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has TargetResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has XReferer => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePersistentAppUI');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::CreatePersistentAppUIOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CreatePersistentAppUI - Arguments for method CreatePersistentAppUI on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePersistentAppUI on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method CreatePersistentAppUI.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePersistentAppUI.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $CreatePersistentAppUIOutput = $elasticmapreduce->CreatePersistentAppUI(
      TargetResourceArn   => 'MyArnType',
      EMRContainersConfig => {
        JobRunId => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
      },    # OPTIONAL
      ProfilerType => 'SHS',    # OPTIONAL
      Tags         => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      XReferer => 'MyString',    # OPTIONAL
    );

    # Results:
    my $PersistentAppUIId = $CreatePersistentAppUIOutput->PersistentAppUIId;
    my $RuntimeRoleEnabledCluster =
      $CreatePersistentAppUIOutput->RuntimeRoleEnabledCluster;

    # Returns a L<Paws::EMR::CreatePersistentAppUIOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/CreatePersistentAppUI>

=head1 ATTRIBUTES


=head2 EMRContainersConfig => L<Paws::EMR::EMRContainersConfig>

The EMR containers configuration.



=head2 ProfilerType => Str

The profiler type for the persistent application user interface. Valid
values are SHS, TEZUI, or YTS.

Valid values are: C<"SHS">, C<"TEZUI">, C<"YTS">

=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

Tags for the persistent application user interface.



=head2 B<REQUIRED> TargetResourceArn => Str

The unique Amazon Resource Name (ARN) of the target resource.



=head2 XReferer => Str

The cross reference for the persistent application user interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePersistentAppUI in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

