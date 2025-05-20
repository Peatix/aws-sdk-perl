
package Paws::EntityResolution::DeletePolicyStatement;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'arn', required => 1);
  has StatementId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicyStatement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{arn}/{statementId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EntityResolution::DeletePolicyStatementOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::DeletePolicyStatement - Arguments for method DeletePolicyStatement on L<Paws::EntityResolution>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePolicyStatement on the
L<AWS EntityResolution|Paws::EntityResolution> service. Use the attributes of this class
as arguments to method DeletePolicyStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePolicyStatement.

=head1 SYNOPSIS

    my $entityresolution = Paws->service('EntityResolution');
    my $DeletePolicyStatementOutput = $entityresolution->DeletePolicyStatement(
      Arn         => 'MyVeniceGlobalArn',
      StatementId => 'MyStatementId',

    );

    # Results:
    my $Arn    = $DeletePolicyStatementOutput->Arn;
    my $Policy = $DeletePolicyStatementOutput->Policy;
    my $Token  = $DeletePolicyStatementOutput->Token;

    # Returns a L<Paws::EntityResolution::DeletePolicyStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution/DeletePolicyStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the resource for which the policy need to be deleted.



=head2 B<REQUIRED> StatementId => Str

A statement identifier that differentiates the statement from others in
the same policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePolicyStatement in L<Paws::EntityResolution>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

