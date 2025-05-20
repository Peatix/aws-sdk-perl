
package Paws::EntityResolution::AddPolicyStatement;
  use Moose;
  has Action => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'action', required => 1);
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has Condition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'condition');
  has Effect => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'effect', required => 1);
  has Principal => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principal', required => 1);
  has StatementId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPolicyStatement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{arn}/{statementId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::AddPolicyStatementOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::AddPolicyStatement - Arguments for method AddPolicyStatement on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddPolicyStatement on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method AddPolicyStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddPolicyStatement.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $AddPolicyStatementOutput = $entityresolution->AddPolicyStatement(
      Action => [
        'MyStatementAction', ...    # min: 3, max: 64
      ],
      Arn       => 'MyVeniceGlobalArn',
      Effect    => 'Allow',
      Principal => [
        'MyStatementPrincipal', ...    # min: 12, max: 64
      ],
      StatementId => 'MyStatementId',
      Condition   => 'MyStatementCondition',    # OPTIONAL
    );

    # Results:
    my $Arn    = $AddPolicyStatementOutput->Arn;
    my $Policy = $AddPolicyStatementOutput->Policy;
    my $Token  = $AddPolicyStatementOutput->Token;

    # Returns a L<Paws::EntityResolution::AddPolicyStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/AddPolicyStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => ArrayRef[Str|Undef]

The action that the principal can use on the resource.

For example, C<entityresolution:GetIdMappingJob>,
C<entityresolution:GetMatchingJob>.



=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource that will be accessed by
the principal.



=head2 Condition => Str

A set of condition keys that you can use in key policies.



=head2 B<REQUIRED> Effect => Str

Determines whether the permissions specified in the policy are to be
allowed (C<Allow>) or denied (C<Deny>).

If you set the value of the C<effect> parameter to C<Deny> for the
C<AddPolicyStatement> operation, you must also set the value of the
C<effect> parameter in the C<policy> to C<Deny> for the C<PutPolicy>
operation.

Valid values are: C<"Allow">, C<"Deny">

=head2 B<REQUIRED> Principal => ArrayRef[Str|Undef]

The Amazon Web Services service or Amazon Web Services account that can
access the resource defined as ARN.



=head2 B<REQUIRED> StatementId => Str

A statement identifier that differentiates the statement from others in
the same policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddPolicyStatement in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

