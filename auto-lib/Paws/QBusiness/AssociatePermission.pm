
package Paws::QBusiness::AssociatePermission;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal', required => 1);
  has StatementId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociatePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::AssociatePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::AssociatePermission - Arguments for method AssociatePermission on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociatePermission on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method AssociatePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociatePermission.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $AssociatePermissionResponse = $qbusiness->AssociatePermission(
      Actions       => [ 'MyQIamAction', ... ],
      ApplicationId => 'MyApplicationId',
      Principal     => 'MyPrincipalRoleArn',
      StatementId   => 'MyStatementId',

    );

    # Results:
    my $Statement = $AssociatePermissionResponse->Statement;

    # Returns a L<Paws::QBusiness::AssociatePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/AssociatePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

The list of Amazon Q Business actions that the ISV is allowed to
perform.



=head2 B<REQUIRED> ApplicationId => Str

The unique identifier of the Amazon Q Business application.



=head2 B<REQUIRED> Principal => Str

The Amazon Resource Name of the IAM role for the ISV that is being
granted permission.



=head2 B<REQUIRED> StatementId => Str

A unique identifier for the policy statement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociatePermission in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

