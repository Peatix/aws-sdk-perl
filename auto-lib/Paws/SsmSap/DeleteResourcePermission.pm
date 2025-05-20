
package Paws::SsmSap::DeleteResourcePermission;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceResourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/delete-resource-permission');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::DeleteResourcePermissionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::DeleteResourcePermission - Arguments for method DeleteResourcePermission on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePermission on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method DeleteResourcePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePermission.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $DeleteResourcePermissionOutput = $ssm -sap->DeleteResourcePermission(
      ResourceArn       => 'MyArn',
      ActionType        => 'RESTORE',    # OPTIONAL
      SourceResourceArn => 'MyArn',      # OPTIONAL
    );

    # Results:
    my $Policy = $DeleteResourcePermissionOutput->Policy;

    # Returns a L<Paws::SsmSap::DeleteResourcePermissionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/DeleteResourcePermission>

=head1 ATTRIBUTES


=head2 ActionType => Str

Delete or restore the permissions on the target database.

Valid values are: C<"RESTORE">

=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.



=head2 SourceResourceArn => Str

The Amazon Resource Name (ARN) of the source resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePermission in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

