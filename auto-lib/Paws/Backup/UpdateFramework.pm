
package Paws::Backup::UpdateFramework;
  use Moose;
  has FrameworkControls => (is => 'ro', isa => 'ArrayRef[Paws::Backup::FrameworkControl]');
  has FrameworkDescription => (is => 'ro', isa => 'Str');
  has FrameworkName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'frameworkName', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFramework');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/frameworks/{frameworkName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::UpdateFrameworkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::UpdateFramework - Arguments for method UpdateFramework on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFramework on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method UpdateFramework.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFramework.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $UpdateFrameworkOutput = $backup->UpdateFramework(
      FrameworkName     => 'MyFrameworkName',
      FrameworkControls => [
        {
          ControlName            => 'MyControlName',
          ControlInputParameters => [
            {
              ParameterName  => 'MyParameterName',     # OPTIONAL
              ParameterValue => 'MyParameterValue',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          ControlScope => {
            ComplianceResourceIds => [ 'Mystring', ... ]
            ,    # min: 1, max: 100; OPTIONAL
            ComplianceResourceTypes => [ 'MyARN', ... ],              # OPTIONAL
            Tags                    => { 'Mystring' => 'Mystring', }, # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      FrameworkDescription => 'MyFrameworkDescription',    # OPTIONAL
      IdempotencyToken     => 'Mystring',                  # OPTIONAL
    );

    # Results:
    my $CreationTime  = $UpdateFrameworkOutput->CreationTime;
    my $FrameworkArn  = $UpdateFrameworkOutput->FrameworkArn;
    my $FrameworkName = $UpdateFrameworkOutput->FrameworkName;

    # Returns a L<Paws::Backup::UpdateFrameworkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/UpdateFramework>

=head1 ATTRIBUTES


=head2 FrameworkControls => ArrayRef[L<Paws::Backup::FrameworkControl>]

The controls that make up the framework. Each control in the list has a
name, input parameters, and scope.



=head2 FrameworkDescription => Str

An optional description of the framework with a maximum 1,024
characters.



=head2 B<REQUIRED> FrameworkName => Str

The unique name of a framework. This name is between 1 and 256
characters, starting with a letter, and consisting of letters (a-z,
A-Z), numbers (0-9), and underscores (_).



=head2 IdempotencyToken => Str

A customer-chosen string that you can use to distinguish between
otherwise identical calls to C<UpdateFrameworkInput>. Retrying a
successful request with the same idempotency token results in a success
message with no action taken.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFramework in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

