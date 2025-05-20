
package Paws::SsmSap::PutResourcePermission;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/put-resource-permission');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SsmSap::PutResourcePermissionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::PutResourcePermission - Arguments for method PutResourcePermission on L<Paws::SsmSap>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePermission on the
L<AWS Systems Manager for SAP|Paws::SsmSap> service. Use the attributes of this class
as arguments to method PutResourcePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePermission.

=head1 SYNOPSIS

    my $ssm-sap = Paws->service('SsmSap');
    my $PutResourcePermissionOutput = $ssm -sap->PutResourcePermission(
      ActionType        => 'RESTORE',
      ResourceArn       => 'MyArn',
      SourceResourceArn => 'MyArn',

    );

    # Results:
    my $Policy = $PutResourcePermissionOutput->Policy;

    # Returns a L<Paws::SsmSap::PutResourcePermissionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-sap/PutResourcePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => Str



Valid values are: C<"RESTORE">

=head2 B<REQUIRED> ResourceArn => Str





=head2 B<REQUIRED> SourceResourceArn => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePermission in L<Paws::SsmSap>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

